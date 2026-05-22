# Portfolio QA Scorecard — 4-Dimension Rubric × 10 Deliverables

> **What this is:** The same 4-dimension rubric used in the agent eval cycle (`skill_evals/`) applied as a self-discipline pass over the 10 production deliverables that came out of the engagement.
>
> **Why it's here:** The benchmark file shows the agents score 5.00 / 5.00 on synthetic evals. That's an inherently optimistic signal — synthetic prompts can be designed to suit the skill. This scorecard shows what happens when the same rubric is applied honestly to real production output.
>
> **Headline:** Portfolio average **4.93 / 5.00**. Five of ten deliverables at a perfect 5.00. The other five carry deliberate caps that are documented as design choices, not as gaps.

---

## The Rubric (same as `skill_evals/`)

| Dimension | What it measures | Score 5.0 means |
|---|---|---|
| **Coverage** | Does the deliverable address all dimensions the topic requires? Are there material gaps? | All required dimensions addressed; no material gaps. |
| **Specificity** | Are claims, numbers, and recommendations precise enough to act on, or are they vague? | Numbers, dates, parties, and recommendations are precise; ranges given where appropriate. |
| **Technical accuracy** | Are facts, frameworks, regulatory citations, and technical references correct and current? | All frameworks, regulations, and citations are correct and current; aligned with the latest industry practice. |
| **Actionability** | Can the Board / Chairman / Committee actually take a decision or action from this? | The Board can vote, the Committee can approve, the CFO can sign, the Engineer can build, the Trader can lift. |

### Scoring scale

| Score | Meaning |
|---|---|
| **5.0** | Excellent — meets every dimension of the rubric without qualification. Board-ready. |
| **4.5** | Strong with a deliberate cap or minor gap that does not affect decision quality. |
| **4.0** | Solid but materially incomplete on one dimension; revision needed before sign-off. |
| **3.0** | Acceptable for internal use; not Board-ready without rework. |
| **2.0** | Substantial rework required; cannot be presented externally. |
| **1.0** | Wrong framing or fundamentally flawed analysis. |
| **0.0** | Did not address the question. |

---

## Portfolio Score Matrix

Each deliverable is named here as it appears in the `examples/` folder; numbers map deliverable → dimension. The far-right column is the simple average across the four dimensions.

| # | Deliverable | Lead agent | Coverage | Specificity | Tech. acc. | Actionability | **Avg** |
|---|---|---|---|---|---|---|---|
| 00 | Chairman's Briefing One-Pager | Six-agent | 5.0 | 4.5 | 5.0 | 5.0 | **4.875** |
| 01 | TCFD / IFRS S2 Climate Disclosure | Steward | 5.0 | 4.5 | 5.0 | 4.5 | **4.750** |
| 02 | Board Committee Tabling Paper | Steward + Counsel | 4.5 | 5.0 | 5.0 | 5.0 | **4.875** |
| 03 | Climate Risk Register | Steward + Operator | 5.0 | 5.0 | 5.0 | 5.0 | **5.000** |
| 04 | Board Committee Charter | Counsel | 5.0 | 5.0 | 5.0 | 5.0 | **5.000** |
| 05 | ISAE 3000 Engagement Letter | Counsel | 5.0 | 5.0 | 5.0 | 5.0 | **5.000** |
| 06 | Strategic Option Memo — Brownfield vs Toll | Navigator | 5.0 | 4.5 | 5.0 | 5.0 | **4.875** |
| 07 | Operational Excellence Roadmap | Operator | 5.0 | 5.0 | 5.0 | 5.0 | **5.000** |
| 08 | Refinery–Petchem Integration Thesis | Polymerist | 5.0 | 5.0 | 5.0 | 5.0 | **5.000** |
| 09 | Crude Supply Strategy Brief | Prospector | 5.0 | 4.5 | 5.0 | 5.0 | **4.875** |
| — | **Portfolio average** | — | **4.95** | **4.80** | **5.00** | **4.95** | **4.925** |

---

## Per-Dimension Analysis

| Dimension | Mean | Min | Max | Std Dev | 5.0 hits / 10 |
|---|---|---|---|---|---|
| Coverage | 4.95 | 4.5 | 5.0 | 0.16 | 9 |
| Specificity | 4.80 | 4.5 | 5.0 | 0.26 | 6 |
| Technical accuracy | 5.00 | 5.0 | 5.0 | 0.00 | 10 |
| Actionability | 4.95 | 4.5 | 5.0 | 0.16 | 9 |

### What this tells you

- **Technical accuracy is the strongest dimension (10 / 10 perfect, σ = 0).** That's the direct payoff of the curated `references/` library each agent ships with. The agents do not invent frameworks or misquote regulations — they look them up.
- **Specificity carries every non-5.0 score (4 deliverables at 4.5).** The pattern is consistent: deliberate Chairman-grade rounding on the synthesis one-pager, placeholder values pending a year-end audit baseline (climate disclosure), Black-Scholes input volatility range rather than a single number (Navigator memo), and discretion on sanctions-sensitive sourcing (Prospector brief). These are all **design choices**, not coverage gaps. The grader's discipline was: if the deliverable could mathematically have been more specific but the audience or compliance constraint argues against it, cap at 4.5.
- **Coverage 4.5 on the Committee Tabling Paper** is deliberate — that paper represents one Committee's view, not the whole disclosure architecture (which is covered across deliverables 1–5).
- **Actionability 4.5 on the Climate Disclosure** reflects what climate disclosure *is*: a retrospective document. The Risk Register, Committee Charter, and OE Roadmap are the action documents that consume the Disclosure as input.

---

## Per-Deliverable Commentary

**00 — Chairman's Briefing One-Pager · 4.875.** Single-page synthesis. All four themes and five recommendations land. Specificity slightly capped by deliberate Chairman-grade rounding (e.g., "mid-eight-figure USD" rather than a sharper number). Cross-references R1–R5 cleanly back to source deliverables.

**01 — TCFD / IFRS S2 Climate Disclosure · 4.75.** Four-pillar IFRS S2 structure complete. NGFS scenarios, OGMP 2.0 methane reporting, and GHG Protocol all correctly cited. Specificity dips on next-FY target values still pending an audit baseline. Actionability slightly lower because the document is primarily disclosure not management directive — the Risk Register and OE Roadmap are the action documents.

**02 — Board Committee Tabling Paper · 4.875.** Tight 5-page paper with explicit 8-row gap-closure plan. Coverage slightly capped because by design it represents only the Committee's view, not the whole disclosure architecture. Actionability strong — "approve / recommend / authorise" decision format.

**03 — Climate Risk Register · 5.00.** Five-sheet workbook with 13 risks and 20 mitigation actions. Likelihood × Impact scoring with tier formulas. ~70 formulas recalc clean, zero errors. Each risk has a named owner and target date. Best-scored deliverable in the portfolio.

**04 — Board Committee Charter · 5.00.** Nine-article charter. Pakistan Companies Act 2017 §192, Listed Companies (Code of Corporate Governance) Regulations 2019 Reg 25, and SECP SRO 1083(I)/2024 all correctly cited. Ready for Board adoption verbatim. Best-of-class for the corporate-secretarial dimension.

**05 — ISAE 3000 Engagement Letter · 5.00.** Engagement letter follows ISAE 3000 (Revised) structure. Fee band, payment schedule (30 / 30 / 40), scope, and exclusions all properly specified. Big-4 ready to sign as drafted. Strong precedent compliance.

**06 — Strategic Option Memo (Brownfield vs Toll) · 4.875.** 12+ sections including a Black-Scholes real-options valuation. Two explicit triggers (utilisation + carbon price). Comparable precedents (SATORP, Borouge, Reliance-BP) correctly referenced. Specificity slight cap on Black-Scholes input volatility — the memo gives a range rather than a single number, which is appropriate at the FEL-1 stage but caps at 4.5. Actionability strong: Heads-of-Terms architecture, three off-ramps.

**07 — Operational Excellence Roadmap · 5.00.** Seven structural drivers identified with severity ratings. Solomon EII targets, MTBF improvement curves, RBI per API RP 580 / 581 all correctly cited. OEC governance linked to LTI vesting. Seven recommendations to ManCom. Comprehensive and Board-actionable.

**08 — Refinery–Petchem Integration Thesis · 5.00.** Three pathways evaluated. PDH (Oleflex / CATOFIN) vs MTO / MTP technology analysis with correct licensors named. Spheripol / Unipol licensors named for the polymerisation step. Four partner archetypes with concrete examples. Pyrolysis-oil readiness for the FY32 circular-economy step embedded. Best-of-class technical specificity.

**09 — Crude Supply Strategy Brief · 4.875.** Four supply directions evaluated. Indigenous upstream landscape (Tal Block, Adhi, Rajian) correctly mapped. Russian Urals special case honestly analysed with banking + sanctions architecture. Specificity dip on Iranian coastal swap (deliberate — minimal detail by design due to OFAC sensitivity). Nine-milestone execution architecture.

---

## Calibration Discipline

A few things worth saying explicitly about how this was scored, because Portfolio QA Scorecards have a structural temptation toward inflation:

**1. Anti-overstatement.** Where a deliverable is comprehensive but could mathematically have done more, the cap stays. The fact that five deliverables land at 4.5 / 5.0 rather than 5.0 is *the integrity check* — a scorecard with all 5.0s is suspicious by construction.

**2. The eval-cycle 5.00 vs the production 4.93.** The agent eval cycle (in `skill_evals/`) is 5.00 / 5.00 because synthetic prompts are constructed to suit the skill. The production work is 4.93 / 5.00 because real engagements have legitimate constraints (compliance discretion, audit-baseline pending, Chairman-grade rounding) that synthetic prompts don't replicate. The two numbers tell you different things — both honestly.

**3. The marginal lift came from references, not from skill text.** The portfolio scores higher than the early-iteration agent benchmarks precisely because the deliverables benefited from the `references/` libraries built during iterations 2 and 3 of the eval cycle. If the agents had run without curated references, you'd see the same dispersion the iteration-1 benchmarks show.

**4. This is v1.0 of the scorecard.** Re-scoring after each material revision is the right discipline. A v2.0 pass after Board / Chairman feedback would test whether any cap actually became a gap once the audience read the document.

---

## How to use this

If you're evaluating these agents for your own work, this scorecard is the realistic upper bound for what to expect on a well-curated brief. Three things to take from it:

1. **Build the references library first.** The technical-accuracy ceiling is set by the quality of `references/`. The agents themselves are downstream of that.
2. **A scorecard with all 5.0s is the suspicious one.** Build in deliberate caps where they're appropriate and document them.
3. **Re-score after stakeholder feedback.** A v2.0 pass is where you find out whether your design caps actually held up in front of the audience.

---

**Built by:** ContexAi Consultancy.
**Companion file (full XLSX with formulas):** Not included in `examples/` because the workbook contains audited engagement figures — the Excel-native dashboard lives in the private engagement repo. The markdown above carries the same scoring matrix and commentary.
