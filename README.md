# ContexAi Consulting Agents — Downstream Oil, Gas & Petrochemicals

A bundle of six specialist consulting agents for Anthropic's Claude (and any agent runtime compatible with Anthropic skills). Each agent is encoded as a `SKILL.md` plus a small library of curated reference material distilled from Big-4 / IOC operating practice.

Built and benchmarked by **ContexAi Consultancy**.

## The six agents

| Agent | Domain | Lead use-cases |
|---|---|---|
| **prospector** | Upstream E&P — exploration, reserves, sub-surface, field development | Block evaluation, reserves audit, P10/P50/P90 thinking, FDP review |
| **polymerist** | Petrochemicals — refinery–chemicals integration, polymers, on-purpose chemistry | PDH economics, FCC propylene routing, PP/PE strategy, advanced recycling |
| **counsel** | Contract administration, FIDIC, claims, change orders | Variation orders, EOT claims, dispute boards, 28-day time-bar discipline |
| **steward** | HSE, ESG, decarbonisation, TCFD/IFRS S2 | Climate disclosure, OGMP 2.0 methane, NEQS compliance, LOPC playbooks |
| **operator** | Operations excellence, reliability, turnaround planning | Solomon EII, MTBF, RBI per API RP 580/581, alarm management |
| **navigator** | Strategy, M&A, portfolio, partnership architecture | Brownfield FID, JV structuring, real-options thinking, scenario modelling |

## Repo layout

```
.
├── skills/
│   ├── prospector/   SKILL.md + references/
│   ├── polymerist/   SKILL.md + references/
│   ├── counsel/      SKILL.md + references/
│   ├── steward/      SKILL.md + references/
│   ├── operator/     SKILL.md + references/
│   └── navigator/    SKILL.md + references/
├── skill_evals/
│   ├── benchmark.json       Three-iteration aggregate (final 5.00/5.00 portfolio)
│   ├── eval_viewer.html     Dark-theme dashboard, openable in any browser
│   └── results/             Raw results.json per iteration × skill
├── setup.sh                 One-line install into Claude Desktop / Code skills directory
├── LICENSE                  MIT
└── README.md
```

## Quick install (Claude Desktop / Claude Code)

```bash
git clone https://github.com/<your-org>/contexai-consulting-agents
cd contexai-consulting-agents
./setup.sh
```

The setup script copies the six skill folders into your local Claude skills directory. After restart, the agents become discoverable to Claude.

## Eval methodology

The agents were tuned over a three-iteration evaluation cycle:

| Iteration | Portfolio score | Highlights |
|---|---|---|
| 1 (baseline) | 4.83 / 5.00 | Pilot evals across all 6 skills |
| 2 (enriched refs) | 4.97 / 5.00 | Added pilot references for steward, navigator, counsel |
| 3 (final) | **5.00 / 5.00** | Added TCFD/IFRS S2 Pakistan template; portfolio plateaus |

Each iteration scores across four dimensions: coverage · specificity · technical_accuracy · actionability — graded by an LLM judge against a fixed rubric.

Open `skill_evals/eval_viewer.html` in any browser to inspect score deltas across iterations.

## Production usage

These agents have been live-tested as the operating system behind a Board-grade advisory engagement for a listed Karachi refinery, producing publication-quality deliverables across the climate, operational, strategic, contractual and petchem-integration workstreams. The hit rate on agent-recommended actions translating into board-decision input has been high — but agents are decision-support, not decision-makers.

## License

MIT. See `LICENSE`.

## Citation

If you use these agents in published work, please cite as:

> ContexAi Consultancy (2026). *Six specialist consulting agents for downstream oil, gas & petrochemicals*. GitHub: contexai-consulting-agents.
