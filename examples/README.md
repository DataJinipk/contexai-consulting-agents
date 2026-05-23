# Examples — Evidence of Work

This folder contains **sanitised excerpts** from a real production engagement that used the ContexAi consulting agents end-to-end, plus the v3.2.0 team-of-agents eval benchmarks. The engagement: a 10-deliverable Board advisory portfolio for a listed downstream refinery in South Asia. Each excerpt is generalised to a fictional client ("ABC Refinery Pk Limited") and stripped of proprietary figures, specific counterparty names, and identifying capex envelopes — but preserves the *structure*, *methodology*, and *cross-agent linkages* so you can see what each agent actually produces.

If you're evaluating whether these agents are useful for your own work, this is the folder to read.

## What each example shows

| # | File | Lead agent | Demonstrates |
|---|------|-----------|--------------|
| 00 | `00-integrated-chairmans-briefing.md` | All six | How the six original agents collaborate on a single Board-grade synthesis |
| 01 | `01-steward-climate-disclosure.md` | Steward | TCFD/IFRS S2 four-pillar disclosure structure |
| 02 | `02-counsel-bscc-charter.md` | Counsel | Committee charter under Pakistan Companies Act 2017 S192 |
| 03 | `03-navigator-strategic-option-memo.md` | Navigator | Real-options thinking on a brownfield-vs-toll decision |
| 04 | `04-operator-oe-roadmap.md` | Operator | Solomon EII / Reliability / Turnaround sequencing |
| 05 | `05-polymerist-petchem-thesis.md` | Polymerist | Refinery–petchem integration evaluation (3 pathways) |
| 06 | `06-prospector-crude-supply-brief.md` | Prospector | Crude supply diversification + indigenous E&P sourcing |
| 07 | `07-portfolio-qa-scorecard.md` | All six | 4-dimension QA rubric applied honestly across all 10 production deliverables (4.93 / 5.00) |
| 08 | `08-team-of-agents-eval-iter2.md` | Chief-advisor + Economist | **v3.2.0** — 3 evals × 2 configs, blind grading, on-disk skills; iter-2 = 4.79 portfolio, **+1.17 specificity vs baseline** |
| 09 | `09-team-of-agents-eval-iter3.md` | Chief-advisor + Economist | **v3.2.0** — added Anchor-confidence discipline; iter-3 = 4.67 portfolio, **+0.17 tech accuracy, zero invented statutory anchors** |

## How these were produced

For each production deliverable (00–07), the relevant agent's `SKILL.md` was invoked inside Claude Desktop (or Claude Code) along with the agent's `references/` library. The output below shows the structure and language quality the agent produces consistently — across the three-iteration eval cycle. The synthetic eval portfolio scores 5.00 / 5.00; the production portfolio, scored honestly with the same rubric, lands at 4.93 / 5.00 — see `07-portfolio-qa-scorecard.md` for the breakdown.

For the team-of-agents evals (08–09), three evals (pakistan-macro-cfo, chairman-tri-inflection, fcc-fix-or-sell) were run twice each — once with `chief-advisor` + `economist` loaded, once with no skill (baseline) — and graded blind by an independent LLM judge against the same 4-dimension rubric. The headline trade-off between iter-2 (higher specificity) and iter-3 (verification discipline, higher accuracy) is the basis for shipping both economist variants in this repo.

## How NOT to read these

These examples are *demonstrations of what the agents output*, not *templates to copy*. Each engagement should re-run the agent on the real situation, with real data, real counterparties, and real governance constraints. The agents are decision-support, not decision-makers.

## Disclaimer

All client identities, dollar figures, contract counterparties, and proprietary technical details have been removed or generalised. Any resemblance to a specific company is coincidental — the *type* of company (mid-scale South Asian downstream refinery) is real because that's the operating context these agents were built for.

---

**License:** MIT (same as the main repo).  
**Built by:** ContexAi Consultancy.
