# Repository Guidelines

## Project Structure & Module Organization

This repository defines the Taiwan Long-Term Care FHIR R4 Implementation Guide using FHIR Shorthand (FSH).

- `input/fsh/`: Profiles, Extensions, logical models, terminology, and examples; domain folders include `feeaudit/` and `sports/`.
- `input/pagecontent/`: authored Markdown pages; `input/images/` and `input/includes/`: assets and navigation.
- `sushi-config.yaml`: IG metadata and dependencies; `ig.ini`: Publisher configuration.
- `fsh-generated/` and `output/`: build outputs. `docs/` contains the published site; preserve `docs/CNAME` when regenerating it.

## Build, Test, and Development Commands

- `sushi .`: compile FSH and check syntax.
- `./_updatePublisher.sh`: update the local IG Publisher.
- `./_genonce.sh`: build and validate the IG using `https://tx.fhir.org`; stop if the terminology service is unavailable. Do not skip terminology validation or use a local terminology server.
- `java -Dfile.encoding=UTF-8 -jar input-cache/publisher.jar -ig . -tx https://tx.fhir.org`: explicitly build with online terminology validation.
- `./_gencontinuous.sh`: continuously rebuild during development.

Publisher updates must preserve this repository's build scripts so the required terminology validation remains enabled.

## Coding Style & Naming Conventions

Follow adjacent FSH files: top-level `*` rules and four-space indentation for multiline Slice declarations. Use names such as `profile_bundle_fee_apply.fsh`, `ext_feeaudit_record_ref.fsh`, `cs_*.fsh`, `vs_*.fsh`, and `example_*.fsh`. Reuse aliases and existing canonical identifiers. Write titles and descriptions in Traditional Chinese. No dedicated formatter is configured.

## Description Writing Principles

Explain what contributors should fill in, using plain Traditional Chinese and short sentences.

- Use concise labels in `^short`; include input guidance such as `照顧服務員。[應填入對應的 Practitioner]`.
- Distinguish embedded Resources from References. Specify actual values, formats, units, choices, and applicable service conditions.
- Avoid legacy field annotations such as `對應 svc_user_no1 至 svc_user_no5`. Reserve source-field mappings for explicitly designated mapping tables; do not relocate them into `^definition` or `^purpose`.
- Keep **Slice** in English. Use `^definition` for necessary filling instructions and `^purpose` for resource usage.
- Follow [Bundle CMS](input/fsh/profiles/bundles/profile_bundle_cms.fsh), [Composition Referral](input/fsh/profiles/compositions/profile_composition_referral.fsh), and [CMS Memory](input/fsh/profiles/profile_questionnaireResponse_cms_memory.fsh).
- Keep prose consistent with actual constraints. Wording-only edits must preserve cardinalities, types, bindings, fixed values, and invariant expressions.

## Testing Guidelines

Validation uses SUSHI and Publisher QA rather than a unit-test framework. Maintain relevant examples under `input/fsh/examples/`. Compile FSH changes; for validation or rendering changes, inspect `output/qa.html` after a full build. Fix errors and investigate warnings before adding any narrowly justified suppression to `input/ignoreWarnings.txt`.

## Commit & Pull Request Guidelines

History uses `feat:`, `fix:`, `build:`, and `docs:` prefixes with concise Chinese or English summaries. Keep commits focused. PRs should explain the problem, resulting behavior, affected resources, and validation results; link relevant issues and include screenshots when rendering changes need visual review.
