# beacon-ui-timeline-bench

`beacon-ui-timeline-bench` treats frontend apps as a local verification problem. The Lua implementation is intentionally narrow, but the fixtures and notes make the behavior explicit.

## Beacon UI Timeline Bench Checkpoints

Treat the compact fixture as the contract and the extended examples as a scratchpad. The code should stay boring enough that a change in behavior is obvious from the test output.

## What This Is For

This is not a wrapper around a service. It is a self-contained project that shows how the model behaves when demand, capacity, latency, risk, and weight move in different directions.

## Case Study

The examples are meant to be readable before they are exhaustive. They cover enough variation to show how latency and risk can pull a decision below the threshold.

## Architecture Notes

The interesting part is the boundary between accepted and reviewed scenarios. Extended examples sit near that boundary so future edits can show whether the model became more permissive or more cautious. The Lua project keeps the module shape simple and validates behavior through a direct script.

## Useful Pieces

- Models view models with deterministic scoring and explicit review decisions.
- Uses fixture data to keep interaction state changes visible in code review.
- Includes extended examples for layout checks, including `recovery` and `degraded`.
- Documents fixture data tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.

## Local Workflow

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Quality Gate

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Project Layout

- `src`: primary implementation
- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## Expansion Ideas

- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add a loader for `examples/extended_cases.csv` and promote selected cases into the language test suite.
- Add a short report command that prints the score breakdown for a single scenario.
- Add one more frontend apps fixture that focuses on a malformed or borderline input.

## Scope

The scoring model is simple by design. More domain-specific behavior should be added through explicit adapters or extra fixture classes rather than hidden constants.

## Tooling

The only required setup is the local Lua toolchain. After cloning, stay in the repo root so fixture paths resolve correctly.
