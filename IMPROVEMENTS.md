# Suggested next improvements

These are suggestions, **not changes silently added to this release**.

1. **Rotating save backups and recovery UI.** Keep the last few successful saves with timestamps, show validation errors before replacing a good save, and offer a one-click recovery preview. This provides stronger protection against interrupted writes and accidental overwrites.
2. **Market health diagnostics, not another cap graph.** An optional developer view could show listed units, NPC reserves, player-owned supply, relisted/issued totals and last review time, plus exportable logs. It would make long-run balancing and upstream quote/artwork failures easier to inspect without cluttering Market Home.
3. **Mission filtering and scalable reward rows.** Add active/completed filters and a compact progress-first view, retaining the readable wrapping layout. This would help if the number of simultaneous missions grows.
4. **Automated cross-platform regression runs.** Keep fixed-seed stock/float tests, old-save fixtures and screenshot/font-fit checks in CI; add actual macOS and Windows runs. Stabilize asynchronous tab-state checks with EDT waits before treating CI as fully deterministic.
5. **Longer economy soak tests.** Extend reserve-first checks to hours/days of simulated play and scenarios with mass player ownership, storage, contracts and container depletion; compare stock, scarcity, minting and heap usage rather than only a single headline count.
