# Beacon UI Timeline Bench Walkthrough

This note is the quickest way to read the extra review model in `beacon-ui-timeline-bench`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | view drift | 110 | watch |
| stress | state pressure | 151 | ship |
| edge | layout risk | 135 | watch |
| recovery | interaction cost | 238 | ship |
| stale | view drift | 185 | ship |

Start with `recovery` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `interaction cost` against `view drift`, not the raw score alone.
