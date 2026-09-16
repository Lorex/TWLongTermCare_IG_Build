#!/bin/bash

set -e
set -o pipefail

# Variables
publisher_jar="publisher.jar"
input_cache_path="$(pwd)/input-cache/"
upper_path="../"

function check_jar_location() {
  if [ -f "${input_cache_path}${publisher_jar}" ]; then
    jar_location="${input_cache_path}${publisher_jar}"
    echo "Found publisher.jar in input-cache"
  elif [ -f "${upper_path}${publisher_jar}" ]; then
    jar_location="${upper_path}${publisher_jar}"
    echo "Found publisher.jar in parent folder"
  else
    jar_location="not_found"
    echo "publisher.jar not found in input-cache or parent folder"
  fi
}

function check_internet_connection() {
  if latest_version=$(curl --fail --silent --show-error --location --connect-timeout 10 --max-time 30 https://api.github.com/repos/HL7/fhir-ig-publisher/releases/latest | sed -n 's/.*"tag_name": *"\([^"]*\)".*/\1/p'); then
    online=true
    echo "Publisher release information is available."
  else
    online=false
    latest_version=""
    echo "Unable to check the latest Publisher release."
  fi
}


function update_publisher() {
  "$(dirname "$0")/_updatePublisher.sh" "$@"
}

function build_ig() {
  "$(dirname "$0")/_genonce.sh" "$@"
}

function build_nosushi() {
  build_ig -no-sushi "$@"
}

function jekyll_build() {
  echo "Running Jekyll build..."
  jekyll build -s temp/pages -d output
}

function cleanup() {
  echo "Cleaning up temp directories..."
  if [ -f "${input_cache_path}${publisher_jar}" ]; then
    mv "${input_cache_path}${publisher_jar}" ./
    rm -rf "${input_cache_path}"*
    mkdir -p "$input_cache_path"
    mv "$publisher_jar" "$input_cache_path"
  fi
  rm -rf ./output ./template ./temp
  echo "Cleanup complete."
}

check_jar_location

# Handle command-line argument or menu
case "$1" in
  update) shift; update_publisher "$@" ;;
  build) shift; build_ig "$@" ;;
  nosushi) shift; build_nosushi "$@" ;;
  notx) echo "ERROR: Builds without terminology validation are no longer supported." >&2; exit 1 ;;
  jekyll) jekyll_build ;;
  clean) cleanup ;;
  exit) exit 0 ;;
  *)
    check_internet_connection
    # Compute default choice
    default_choice=2 # Build by default

    if [ "$jar_location" = "not_found" ]; then
      default_choice=1 # Download if jar is missing
    elif [ -n "$latest_version" ]; then
      current_version=$(java -jar "$jar_location" -v 2>/dev/null | tr -d '\r')
      if [ "$current_version" != "$latest_version" ]; then
        default_choice=1 # Offer update if newer version exists
      fi
    fi

    echo "---------------------------------------------"
    echo "Publisher: ${current_version:-unknown}; Latest: ${latest_version:-unknown}"
    echo "Publisher location: $jar_location"
    echo "Online: $online"
    echo "---------------------------------------------"
    echo
    echo "Please select an option:"
    echo "1) Download or update publisher"
    echo "2) Build IG"
    echo "3) Build IG without Sushi"
    echo "4) Jekyll build"
    echo "5) Cleanup temp directories"
    echo "0) Exit"
    echo

    # Read with timeout, but default if nothing entered
    echo -n "Choose an option [default: $default_choice]: "
    read -t 5 choice || choice="$default_choice"
    choice="${choice:-$default_choice}"
    echo "You selected: $choice"

    case "$choice" in
      1) update_publisher ;;
      2) build_ig ;;
      3) build_nosushi ;;
      4) jekyll_build ;;
      5) cleanup ;;
      0) exit 0 ;;
      *) echo "Invalid option." ;;
    esac
  ;;

esac
