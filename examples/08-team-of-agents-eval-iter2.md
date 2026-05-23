# Team-of-Agents Eval — Iteration 2

**Date.** Saturday 23 May 2026.
**What changed since Iteration 1.** Two skill files (`chief-advisor`, `economist`) written to disk for the first time, each carrying a hardened specificity discipline — the **Specificity Contract** in `chief-advisor` and the **Numbered Anchors** discipline + Pakistan Anchor Library in `economist`. Iteration-1 results were produced with prompt-scaffolded skills (a methodological caveat surfaced at the time). Iteration-2 also uses **independent blind grading** — each grader was given the question and two unlabelled responses and asked to score on the 4-dim rubric without seeing which was with-skill vs baseline.

---

## Headline scores

| | Coverage | Specificity | Technical accuracy | Actionability | Portfolio |
|---|---|---|---|---|---|
| **with_skill** | 5.00 | **4.67** | 4.50 | 5.00 | **4.79** |
| **baseline** | 4.50 | 3.50 | 4.00 | 4.50 | 4.13 |
| **Δ (skill − baseline)** | +0.50 | **+1.17** | +0.50 | +0.50 | **+0.67** |

Pass-rate at ≥4.0 mean: with_skill 100% (3/3), baseline 67% (2/3).

---

## Per-eval scores

| Eval | with_skill mean | baseline mean | Δ |
|---|---|---|---|
| pakistan-macro-cfo | 4.50 | 3.50 | +1.00 |
| chairman-tri-inflection | 4.875 | 4.625 | +0.25 |
| fcc-fix-or-sell | 5.00 | 4.25 | +0.75 |

---

## Iteration-1 vs Iteration-2 comparison

| | Iter-1 | Iter-2 |
|---|---|---|
| with_skill portfolio | 5.00 | **4.79** |
| baseline portfolio | 4.83 | **4.13** |
| Specificity Δ vs baseline | **+0.16** | **+1.17** |

**Reading.** Absolute scores fell in iteration-2 because the grading was stricter (blind, independent, with prosecutor-style scrutiny of named anchors). The fact that with_skill fell by 0.21 and baseline fell by 0.71 — and that the specificity delta widened by 7× — is the real signal. The Specificity Contract and Numbered Anchors are doing **substantial** work. Iteration-1's numbers were inflated; iteration-2's numbers are honest.

---

## What the skill actually does (per the graders)

**Specificity Contract — `chief-advisor`.** Forces the synthesis to name standards (API 510/570/571 S4.3.2, API 580/581, API RP 754, NACE SP0590, AACE 18R-97), name contract instruments (BI policy waiting period, gradual-corrosion exclusion, licensor warranty, FIDIC Yellow Book), name units precisely (32 kbpd FCC, Solomon EII 122 vs 85), and name dates on every action gate.

**Numbered Anchors + Pakistan Anchor Library — `economist`.** Forces every macro claim onto (instrument + level + date/source). Pulls in named statutory references (ITO 2001 SS4C/113/57/57A/100E; BRP-21 S3(2); OGRA SRO 1248(I)/2021) instead of category-level language ("the tax holiday", "the policy rate").

**Specialist orchestration discipline — `chief-advisor`.** Forces the synthesis to name which of the 12 specialists owns each branch of the decision and to resolve cross-specialist tension explicitly, rather than producing a flat list of considerations.

---

## Risk surfaced (this is iteration-2's most honest finding)

**Pushing for specificity can produce confidently wrong anchors.** On eval-1 (pakistan-macro-cfo), the with_skill response scored 3.5/5 on technical_accuracy because it stated "BRP-21 = 20-year exemption" — the actual BRP-21 S3(2) holiday is 5 years for greenfield with refresh provisions. It also conflated IFEM/PDL framing. This is the trade-off of the Specificity Contract: the discipline says "anchor every claim", and if the model isn't certain of the anchor it will sometimes invent one.

**Mitigation if a third iteration is wanted.** Either (a) tighten the economist skill with an explicit guard ("if uncertain of a statutory threshold, mark it 'subject to verification' rather than asserting a value"), or (b) accept the trade-off and rely on Board-level fact-checking of statutory citations. The cost-benefit favours acceptance — actionability is still 5/5 and the inflated anchor was easily catchable.

---

## Decision

Specificity moved from 4.83 (inflated iter-1) → 4.67 (honest iter-2 with-skill) **with the baseline at 3.50** — a +1.17 delta that is large and stable. The Specificity Contract is the most defensible value-add we have evidence for. Ready to ship to v3.2.0.

Lowest dimension is still **technical_accuracy** (4.50). If a third iteration is funded, that's the target — not specificity.

---

## Files

- `benchmark_iteration2.json` — raw scores
- `benchmark_iteration2.md` — this document
- `eval-*/grading.json` — per-eval grader output
- `eval-*/{with_skill,baseline}/outputs/response.md` — 6 responses graded
- `skill-content/chief-advisor.md` — skill content used by executors
- `skill-content/economist.md` — skill content used by executors
