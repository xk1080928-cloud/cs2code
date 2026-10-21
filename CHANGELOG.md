# Card/collection/inspection follow-up — 2026-10-20

Complete **187-source project**. Supersedes the former full-gray Inventory cards, 54px collection emblems, Equipment=weapons category and Default-order individual picker.

- Lighter gray only in artwork wells through rarity strip; transparent name/finish rows.
- 64px genuine collection emblems, also in normal unboxing results and matching case/package New Item headers; restored inspection rarity line.
- Equipment=storage units + unused Name Tags; Storage Units tab removed; loadout filters continue in Everything.
- Ascending-price defaults everywhere; Default-order entry removed; independent units/global floats/fixed asks preserved.
- User-selected real-PNG 2D drag/zoom/reset, not fabricated 3D.
- Native PNG retention instead of permanent 130px unboxing reduction; high-quality scaling/2x variants and cached reel sprites; no invented detail.
- 20 native suites / 971 assertions; 19 headless / 578; clean extracted Java 11 build and original save schema check.

---

## Earlier releases (historical policies/counts)

# Startup price processing and visual follow-up — 2026-10-20

Complete **185-file Java project**, not a patch. Supersedes the previous wide/two-column briefing, subtle 180ms wash and opaque Inventory viewport.

- Removed startup's post-feed per-price EDT callback/refresh/ROI debt without suppressing legitimate existing-book/player price updates.
- Compact 448px single-column mission board; all objectives retained.
- Transparent Inventory grid/scenery, solid-gray cards with short top black shade; eased scrolling retained.
- Visible 280ms first-frame-timed slide/reveal on actual top-level/Store/Inventory-section tab changes only.
- Rarity dots centered beneath Armoury skin names.
- Immediate popup dim; synchronous once-only cleanup and no second dark return dip. Slow rotating background lines with hide/dispose cleanup.
- Shared identity headers: collection name beneath gun name, genuine emblem left. Embedded 110 emblems; default names and no-collection knives/gloves preserved.
- Explicit StatTrak™ and exactly-one ★ prefixes. Verified 5,280 StatTrak entries share their normal PNG URL; no invented alternate art.
- Validation: 19 native/artwork suites / 935 assertions; 19 headless / 578; exact quote, first-frame pixels, background rotation, source emblems, save descriptors and clean extracted build checked. See VALIDATION.md for targeted reruns and limitations.

---

## Previous releases (historical counts/policies)

# Mission briefing, in-place Armoury and compact stock repair — 2026-10-20

Complete **183-file Java project**, not a patch; supersedes historical mission preview, broad page-animation and ±1.5% stock-band descriptions below.

- Full four-objective main-menu briefing; removed both View Missions shortcuts and redesigned the card.
- Actual-tab-only 180-ms transitions; purchase/content refreshes do not animate.
- Genuine bundled previews for all 63 Agents; 16/page, uniform centered selectors and filled green Redeem.
- Two-second in-place geometric orbital convergence, exactly-once durable reward, no-info New Item popup and 240-ms catalog return. Original Agent/weapon float, pricing, pattern and rarity economics retained.
- Asynchronous pre-display first-unlock artwork preparation; reuse the current unlock dialog, with no proxy JFrame.
- Cached scene/scaled artwork plus opaque blitting and eased Inventory wheel scrolling.
- Price-history tooltip `Sold: (count)`; recent-sales/individual graphs retained.
- Reproduced the prior compact-lot truncation bug with a constructed 10M→500k fixture. Guarded live repair/scarcity paths and empty-world regeneration; new probe retains all 10M and every parent. Actual historical-session attribution is not claimed.
- Confirmed ongoing 9–11M listings, 10M center and compatible old-buffer migration. Reserve-first batches still share the existing refresher; ordinary sales continue off-page, simulated unboxing remains visible-Market-Home-only.
- Final validation: **17 native/artwork suites, 890 assertions; 19 headless suites, 578 assertions**, old serialized buffer import and clean ZIP/build/save-schema checks. See VALIDATION.md.

---

## Previous releases (historical policies and counts)

# Missions, Home-only simulated openings and buffered marketplace — 2026-10-19

Complete **179-file Java project**, not a patch. This release supersedes the preceding release's hidden-background-opening and cap-chart policies; Care Packages, XP and recent-sales graphs are preserved.

- Enlarged both Missions and main-menu mission layouts, wrapped long titles/descriptions, separated Stars/XP and improved progress readability.
- Removed the total market-cap graph/button, cap sampling and three graph-only classes. Moved their shared available-wear helper unchanged into FloatRules. Kept recent-sales/individual-skin graphs.
- Visibility-gated the single transactional unboxing producer; leaving Home cancels in-flight commits and reentry schedules a fresh delay without catch-up.
- Fixed asynchronous souvenir feed artwork requests, canonical image keys and cached standard-art fallback; balanced physical container families before catalog entries.
- Added persisted reserve-first buffered restocking on the existing five-second worker, bounded new compact lots, meaningful reserve batches and tightly limited common issuance only with low reserves. Never reprices/expands surviving asks or shrinks the initial market.
- Preserved the five original serialized save descriptors; imported an actual extension serialized by the previous complete release. Existing progress, mission IDs, balances and pending exact item identity/float remain compatible.
- Current validation: 14 native/artwork suites (830 assertions), 19 headless suites (578 assertions), small-desktop layout checks, old-extension import and clean extracted build. See VALIDATION.md for fixtures, timing and limitations.

---

## Historical changelog (policies below apply to their named releases)

# Care Packages, persistent circulating supply and trade-up reveals — 2026-10-19

Complete **181-file Java project**, JDK 11+, no added runtime dependencies. This section supersedes the historical policies below.

- Store **Home** replaces Misc; the gear retains the old controls. Orange Care Package/progression panel and a dark three-card reward row.
- Missions award Stars + difficulty-scaled XP. Every 100 XP levels up; **every level automatically grants one case + two gun skins**, with multi-level grants, no weekly cap and no manual claim. Five genuine collections, Classified maximum. Achroma is removed only from Armoury.
- Persistent global surviving quantities include unlisted, owned, stored, equipped and staged rewards. Standard/gold contracts destroy ten/five inputs and create one output. Real and independent background unboxing destroy their containers and create surviving rewards.
- Cap/history uses **quantity-weighted average actual variant asks × surviving global quantity**, retaining the last average when wholly unlisted. Saved world restoration cannot regenerate destroyed case supply. Routine stock additions relist NPC reserves rather than minting units or relisting player ownership.
- Trade-up pool permanently sorts highest quality first. Whole-card hover replaces the input info button. Proceed reaches main Inventory before revealing, with the exact output staged and saved until its popup opens. Both contract paths and resumed reveals are idempotent.
- Quick shared 170-ms page/tab transitions; all prior storage, default/loadout, fixed-ask and early-close opening behavior retained.
- An unavailable-price guard prevents illustrative market activity from attempting NaN-priced container transactions. Original five save record schemas remain unchanged; optional extension stores XP, missions, pending rewards, supply and rolling cap history.

## Historical release notes

# Fixed-ask liquidity and navigation follow-up — 2026-10-19

Complete **176-file Java source project**, not a patch; JDK 11+, no added runtime dependencies.

- Compact adaptive four-column Armoury, contained emblems, bottom-right green redemption and startup-retained collection thumbnails. Preserve distinct Japanese-name variants and normalize accented aliases when warming art.
- Five-second sale buckets with real retained-sale quantities and mean prices; stronger absolute-price demand, including containers in Recently Sold. Both Home feed intervals are 30–150ms.
- Fixed existing asks: consume cheapest individual units or add cheaper supply on the existing market refresher. No factor clock or periodic reseeding. Target ±0.25–0.50%; observed discrete-book changes respect cents/liquidity rather than fabricating volume.
- Exact-variant cap = lowest actual listing ask × all listed units, excluding unlisted Inventory/defaults. Catalog and individual price sorts use actual offers. Bound-aware monotonic float premiums replace random per-unit jitter.
- Default guns/knives/gloves last in all six sorts; cross-top-page Inventory return resets main view without losing contract selections.
- Retrieval returns main Inventory before its complete-batch New Items popup. Early case/Armoury close is an idempotent quick-open with arrival popup; completed-result closure cannot duplicate a reward. Dark dialog backing is established before first frame.
- Shared input info hover on eligible and selected trade-up cards: rarity, wear, exact float, pattern and collection.
- Original five save descriptors, identities, balances, storage, loadout and trade-up/outcome mathematics retained.

Older entries below describe historical releases; this entry and README's current policy supersede their earlier movement/feed descriptions.

---

# Armoury and moving-market follow-up — 2026-10-19

Complete **175-file Java project**, JDK 11+, no added runtime dependencies.

- Corrected Store Misc targeting and gear routing; preserved the six General actions.
- Replaced all Armoury collection pages with genuine collection icons, a four-column rarity-dotted grid and existing star redemption. Highest-available-tier previews cover collections without Covert skins.
- Unified eight-column inventory/storage/matching card layouts; excluded keys from storage atomically; added full retrieved-batch arrival review.
- Replaced Inventory sorting with the six requested orders, Quality by default.
- Commit case/Armoury rewards and build Inventory at landing. Added a dark, flattened scene crossfade, elapsed-time timing, asynchronous ordered saves and atomic binary replacement.
- Added independent five-second ±0.1–0.25% skin reference movement, stable individual seller asks/float premiums and float-aware automatic valuations. Containers retain real source quotes; player asks stay fixed.
- Diagnosed actual Karambit Ruby MW feed outlier. Reject only the defined same-variant cross-wear outlier and use an explicitly modeled wear-discounted FN reference, not a blanket cap or claimed live MW quote.
- Replaced all twelve supplied missing glove paths with audited exterior-matched Valve inventory assets. Shared official light/medium/heavy bins are documented, not fabricated into five distinct images.
- Removed market-cap info badge. Existing save descriptors and trade-up/probability mechanics remain unchanged.

---

# Unified Store, inventory context and trade-up state — 2026-10-19

Complete 171-file project; no new runtime dependencies.

- Replaced Market/Misc top destinations with Store and Misc/Market/Tools/Armoury subtabs.
- Moved Tools purchase UI into Store. Restored Armoury collection cards and functional redemption pages, retaining all original indices.
- Anchored dark, CS2-style skin/tool context menus to the cursor; omitted sticker actions.
- Added inline Inventory-based storage contents/deposit browsing with search, paging and cross-page batch selection.
- Added Name Tag subtitle in inspection, clean stock titles, gray default rarity, combined loadout and blue/yellow equipped overlays.
- Preserved trade-up acknowledgement through background rebuilds; hide eligible inputs at full contract capacity.
- Replay the fade on every new-item carousel movement without closing/recreating its dialog.
- Added 18-site sale-price comparison, showing reference/ask/net/quick-sell separately.
- Removed reported URL deprecation and intentional picker-cast compiler warnings; retry official image mirrors after a single edge 404, preload tools.
- Fixed a tools backend/UI lock-order hazard: balance/tool mutations remain atomic; Swing refresh runs outside the transaction lock on the EDT.
- Optional favorites fields extend the UID-1 tools payload; old payloads initialize them lazily. The five legacy record descriptors are unchanged from the previous tools release.
- At this historical release the exact 12 entries were pending. The new update above replaces the now-supplied entries with audited genuine Valve exterior-bin assets.

---

# Storage, names, smooth opening and CS2-style reveal update — 2026-10-19

Complete 170-file application source. No new runtime dependencies.

- Centered temporary tab labels and compact close controls using consistent, cross-platform geometry.
- Added full-stack ascending/descending float sorting and background work for large groups.
- Cached opening backdrops/sprites; no per-frame source-image scaling; elapsed-time motion, no five-card cap.
- Added a simulated in-game Tools Store, cancellable authorization, official artwork, Storage Units and single-use Name Tags.
- Added Storage Units inventory category, activation, free relabeling, 1,000-item mixed batch deposit/retrieval and paging. Stored identities remain exact and unavailable to active item actions.
- Added visible custom names without rewriting canonical item names, and free name removal without refunds.
- Removed explicit Standard/Gold trade-up selectors; the first input now determines contract size and compatible quality.
- Added delayed/fading rarity-colored NEW ITEM contract results and paged, persistent new-market-item acknowledgements on Inventory entry.
- Added one optional tools payload to UID-6 GameState. Original binary names, UIDs and fields are preserved; older saves migrate with empty tools state.

---

# Individual offers, containers and responsiveness — 2026-10-19

Complete 166-file Java source project; this supersedes the prior lot-head picker and five-card animation cap.

- Added lazy per-unit float/pattern identities, stable across pages, exact purchase/swap delivery and replay rejection. No reduction in logical stock count and no ten-million-object materialization.
- Replaced stock/owned picker popups and skin-detail JFrame windows with closeable temporary Market tabs.
- Centralized real-source NPC container asks, protected them from weapon repricing and kept unavailable-quote stock visible but not purchasable at invented prices. Guarded unavailable prices throughout aggregation, NPC sampling and legacy purchase paths.
- Added owned case/souvenir quick selling and marketplace listings, including save/load and cancellation identity restoration; keys remain nontradable.
- Increased both catalog and site-card artwork height; removed the image-fallback hover notice.
- Removed the five-visible-item opening reel restriction, retaining the existing edge fade and persistent Unlock window.
- Removed the pixelation downsample from inventory scenery; container sale cards use genuine container artwork.
- Reduced periodic EDT work using cached quote keys, a browse-key index, visible-card refreshes, coalesced background summaries, private aggregation locking and yielding four-bucket maintenance batches. All 48 buckets of maintenance still run.
- Corrected NPC activity so a sale cannot discard every unit in a compact stock lot.
- Preserved the five serialized record descriptors and previous equipment, distinct site layouts, exact-price/custom-ask policies, random-event removal and persistent-opening behavior.

---

## Previous delivered marketplace/equipment update

### Marketplace and equipment follow-up — 2026-10-19

The earlier base update contained 163 Java files.

## Equipment
- Added only the stock T/CT knives and gloves, not every vanilla knife model.
- Fixed pending artwork publication so default equipment can update in place.
- Excluded defaults from collectible mission/achievement counts, market/trade-up/NPC-trade eligibility and value.
- Kept default equipment visible and usable, with side-specific knife/glove restrictions.

## Marketplaces
- Added a dedicated all-site chooser for inventory Sell on Market, retaining the exact selected item.
- Added separate Buy/Sell compositions for all 18 sites and five distinct Swap workspaces.
- Eight sites enforce automatic per-variant quotes; ten retain custom asks and a lowest-minus-one-cent shortcut.
- Enforced automatic asks in the transaction engine as well as the read-only form.
- Grouped Buy/Sell/Swap variants while preserving real owned identities and actual compact stock lots.
- Aggregated repeated container quantities and made selection paint-only, with stable card padding.
- Removed site-level duplicate wallet labels; the global balance remains.

## Containers and market activity
- Reused the Unlock modal through preparation, animation and result, until explicitly closed.
- Added below-Milspec souvenir contents and per-outcome Inspect actions; removed Inspect Items.
- Strengthened full-height reel edge shading. Its then-five-card cap is superseded above.
- Removed the complete random-event engine, timer/state/factor, chart markers and developer controls. Ordinary market activity remains.

## Compatibility
- Kept package `blahblah`, Java 11+, and no third-party runtime dependencies.
- Kept all five original serialized save-record descriptors unchanged.
- Retained separate CT/T loadouts and the existing trade-up, float, opening and compact-stock algorithms.
