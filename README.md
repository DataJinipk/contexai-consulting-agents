# ContexAi Consulting Agents — Downstream Oil, Gas & Petrochemicals

A bundle of specialist consulting agents for Anthropic's Claude (and any agent runtime compatible with Anthropic skills). Each agent is encoded as a `SKILL.md` plus a small library of curated reference material distilled from Big-4 / IOC operating practice. **v3.2.0** adds a Chief Advisor orchestrator and a Pakistan country-economist, taking the team to **eleven specialists plus one orchestrator** — a full Big-4 partner team in a folder.

Built and benchmarked by **ContexAi Consultancy**.

## The team

### Orchestrator

| Agent | Role |
|---|---|
| **chief-advisor** | Senior Partner / Practice Leader. Names which specialists own each branch of a multi-disciplinary decision, sequences their inputs, integrates their answers into a single Board-grade synthesis. Enforces a five-section synthesis structure and a Specificity Contract on every claim. |

### Specialists

| Agent | Domain | Lead use-cases |
|---|---|---|
| **prospector** | Upstream E&P — exploration, reserves, sub-surface, field development | Block evaluation, reserves audit, P10/P50/P90 thinking, FDP review |
| **polymerist** | Petrochemicals — refinery–chemicals integration, polymers, on-purpose chemistry | PDH economics, FCC propylene routing, PP/PE strategy, advanced recycling |
| **counsel** | Contract administration, FIDIC, claims, change orders | Variation orders, EOT claims, dispute boards, 28-day time-bar discipline |
| **steward** | HSE, ESG, decarbonisation, TCFD/IFRS S2 | Climate disclosure, OGMP 2.0 methane, NEQS compliance, LOPC playbooks |
| **operator** | Operations excellence, reliability, turnaround planning | Solomon EII, MTBF, RBI per API RP 580/581, alarm management |
| **navigator** | Strategy, M&A, portfolio, partnership architecture | Brownfield FID, JV structuring, real-options thinking, scenario modelling |
| **economist** | Pakistan country risk + energy macro — three-lens analysis with Anchor-confidence discipline (safer default) | SBP / IMF / FBR / OGRA / BRP-21 / KIBOR transmission to P&L |
| **economist-aggressive** | Same as `economist` but without the verification-flagging discipline; higher rubric specificity, requires Board fact-check | Use only when the audience has its own fact-check loop |

The `chief-advisor` SKILL.md also references six **upcoming-to-bundle** specialists that the orchestrator already knows how to direct: `margin-architect` (LP economics, GPW, crack spreads), `trader` (paper-vs-physical, freight, hedging), `alchemist` (refinery–chemicals integration), `sentinel` (asset integrity, RBI, HAZOP/LOPA), `constructor` (EPC/FEED/AACE/FIDIC), and references to the existing eight by name. The full 12-specialist table is in `skills/chief-advisor/SKILL.md`.

## Repo layout

```
.
├── skills/
│   ├── chief-advisor/             SKILL.md — orchestrator (NEW in v3.2.0)
│   ├── economist/                 SKILL.md — safer default (NEW in v3.2.0)
│   ├── economist-aggressive/      SKILL.md — higher-rubric variant (NEW in v3.2.0)
│   ├── prospector/                SKILL.md + references/
│   ├── polymerist/                SKILL.md + references/
│   ├── counsel/                   SKILL.md + references/
│   ├── steward/                   SKILL.md + references/
│   ├── operator/                  SKILL.md + references/
│   └── navigator/                 SKILL.md + references/
├── skill_evals/
│   ├── benchmark.json             Three-iteration synthetic-eval aggregate (5.00/5.00)
│   ├── eval_viewer.html           Dark-theme dashboard, openable in any browser
│   └── results/                   Raw results.json per iteration × skill
├── examples/                      Sanitised excerpts + Team-of-Agents eval benchmarks
├── setup.sh                       One-line install into Claude Desktop / Code skills directory
├── LICENSE                        MIT
└── README.md
```

## Quick install (Claude Desktop / Claude Code)

```bash
git clone https://github.com/<your-org>/contexai-consulting-agents
cd contexai-consulting-agents
./setup.sh
```

The setup script copies the skill folders into your local Claude skills directory. After restart, the agents become discoverable to Claude.

## Eval methodology (v3.2.0 update)

The skills were tuned over two evaluation programmes:

**Programme 1 — Six specialists (v1.0–v3.1.0).** Three-iteration cycle, 5.00 / 5.00 synthetic-eval portfolio, 4.93 / 5.00 production-eval portfolio (with five deliverables at 5.00 and five at 4.5–4.875).

**Programme 2 — Team of agents (v3.2.0).** Three-iteration cycle on `chief-advisor` + `economist`, blind grading, on-disk skill files. Three evals × two configs (with_skill vs baseline). The headline result:

| Iteration | Portfolio with_skill | Specificity Δ vs baseline | Tech accuracy with_skill | What changed |
|---|---|---|---|---|
| 1 | 5.00 (inflated) | +0.16 | 5.00 (inflated) | Prompt-scaffolded skills |
| 2 | 4.79 | **+1.17** | 4.50 | On-disk skills + Specificity Contract + Numbered Anchors |
| 3 | 4.67 | +0.67 | **4.67** | Added Anchor-confidence discipline — zero invented statutory anchors |

The **iter-2 → iter-3 trade-off** is the headline finding. The Anchor-confidence discipline trades −0.50 specificity for +0.17 technical_accuracy by flagging uncertain statutory citations as "(subje