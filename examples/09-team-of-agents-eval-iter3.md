# Team-of-Agents Eval — Iteration 3

**Date.** Saturday 23 May 2026.
**What changed since Iteration 2.** Added an **Anchor-confidence discipline** to the `economist` skill — when a statutory threshold/date/section cannot be confirmed, the discipline requires the writer to tag it "(subject to verification)" or push it into the watch-list rather than asserting a specific number. Targeted at the iter-2 "BRP-21 = 20-year holiday" failure mode (model confidently invented a wrong anchor). `chief-advisor` was unchanged.

---

## Headline scores

| | Coverage | Specificity | **Technical accuracy** | Actionability | Portfolio |
|---|---|---|---|---|---|
| iter-3 with_skill | 4.83 | 4.17 | **4.67** | 5.00 | 4.67 |
| iter-2 with_skill | 5.00 | 4.67 | 4.50 | 5.00 | 4.79 |
| iter-2 baseline | 4.50 | 3.50 | 4.00 | 4.50 | 4.13 |
| **iter-3 vs iter-2 skill** | −0.17 | **−0.50** | **+0.17** | 0.00 | **−0.13** |
| **iter-3 vs baseline** | +0.33 | +0.67 | +0.67 | +0.50 | **+0.54** |

---

## What happened

The Anchor-confidence discipline did exactly what it was designed to do — **zero invented statutory anchors** in iter-3 responses. The grader on the pakistan-macro-cfo eval called the discipline "**exemplary**" — every uncertain ref (BRP-21 §3(2), ITO §100E, SRO 1248(I)/2021, §4C, §113, §57/57A, IMF EFF window, KIBOR/PKRV, reserves) was flagged "(subject to verification)" and parked in a dated watch-list.

**But it cost specificity.** Graders read the verification-tagged claims and directional ranges (e.g., "12-13% KIBOR, ~$13.8 bn reserves — subject to Board-day confirmation") as less specific than iter-2's confidently-asserted numbers. That's an artefact of how the rubric is graded, not of the underlying quality.

**Net portfolio: −0.13.** The trade-off cancels out roughly evenly between accuracy gain and specificity loss.

---

## Two valid reads of this finding

**Read A — Ship iter-2.** The rubric is what we measured against. By the rubric, iter-2's 4.79 portfolio is higher than iter-3's 4.67. If you accept that "occasional invented anchors will be Board-fact-checked at the fact-check step", iter-2 is the right ship version. Pro: highest measured portfolio. Con: relies on Board team to catch the kind of error that ended a Pakistan refinery's tax holiday defence in 2023.

**Read B — Ship iter-3.** The rubric undervalues the verification discipline because the grader cannot distinguish "confidently right specific number" from "confidently wrong specific number" without doing the legal research itself. In real Board work, "(subject to verification)" tags are how senior partners stay out of trouble. The +0.17 on technical_accuracy with zero invented anchors is the safer choice. Pro: no career-ending statutory errors. Con: −0.13 portfolio on the rubric.

**My read.** Read B for real engagements; Read A for marketing the skill's eval performance. The honest framing for the repo: present both iter-2 and iter-3 results, let the user choose which discipline to load.

---

## Vs baseline (unchanged)

Iter-3 with_skill still beats iter-2 baseline by **+0.54 portfolio** and **+0.67 specificity / +0.67 technical_accuracy / +0.50 actionability**. The skills are still doing substantial work regardless of which iteration ships.

---

## Decision

Iteration 3 has surfaced a real trade-off. The next move is yours.
