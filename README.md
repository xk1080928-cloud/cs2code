# CS2 simulator — complete multi-file Java project

The complete application contains **187 production Java source files**, package `blahblah`, for **JDK 11 or later**, with no third-party runtime dependencies. This is the whole project, **not a patch**. Build all the source files together; `hGui.java` is an entry point, not a standalone application source file.

## Build and run

### macOS / Linux

```sh
sh build.sh
sh run.sh
```

### Windows

```bat
build.bat
run.bat
```

The launchers build automatically if the compiled entry point is missing. Run the build script again after editing source. Keep all project files together. A desktop Java installation is required; the simulator is a fullscreen Swing application, not a browser application. Native validation was performed on Linux, not macOS or Windows.

**Existing saves:** the launcher deliberately keeps the caller's working directory so existing relative save files remain discoverable. Launch from the directory containing your existing save, or copy a backup into your normal launch directory. Use **gear → Load** to restore a saved game; loading is not silently forced at startup. Back up saves before upgrading. Closing the application normally saves the current world and player state.

## Current update: card styling, collection headers and mouse inspection

- Inventory artwork wells are **lighter gray (105/109/113)** and end at the rarity strip. The weapon/name/finish area below is transparent, showing the scenery—not a gray rectangle.
- Genuine collection emblems are now **64px instead of 54px**. Normal landed unboxing results have the same left-emblem/name/collection header. Inspection restores the rarity-colored line immediately below the name. Case/package New Item identities resolve their corresponding genuine collection too, even before the marketplace lookup map is built; knives/gloves still have no collection.
- **Equipment contains only storage units and unused Name Tags.** The separate Storage Units tab is gone; tool purchase/browser return routes use Equipment. Loadout slot selection still opens matching skins/defaults in main Everything Inventory.
- All market catalogs/individual offer pickers start **lowest price first**, with no Default-order option. Both price directions and both global float directions remain in individual views. Filters, paging, fixed asks and independent unit identities remain.
- **Interactive 2D PNG inspection:** drag to pan, scroll to zoom (0.5–4×), double-click or RESET VIEW to recenter/reset. Pointer-anchored zoom draws the genuine original PNG, not a small scaled thumbnail. It does not expose the unseen back of a weapon and is not described as 3D.
- **Image quality:** removed the permanent 130px reduction of newly unboxed items; preserved native-resolution PNG downloads/cache; replaced fast/bilinear skin scaling with shared bicubic/quality rendering and native-detail 2× raster variants where the source allows. Inventory, markets, collection/loadout/trade-up/reward views and cached reel sprites use the shared scaler. This improves detail retention and high-DPI rendering, not the intrinsic resolution of a limited upstream asset; no generated detail or counterfeit textures.

## Retained startup processing and interface refinements

- **Faster post-feed startup work:** genuine quote resolution/cache writes run on the price workers during the empty-world/default-equipment startup phase, without thousands of per-price UI refresh/ROI callbacks. A previous-release probe reproduced the feed price being printed while its commit still waited for the UI queue; the current exact quote commits even while that queue is deliberately occupied. Existing player inventories/asks and real pre-initialized books retain their original price-update behavior. Case checking now shows its own progress message in the correct 40% phase.
- **Narrow single-column mission briefing:** all four missions/objectives remain visible, with slightly smaller cards in a 448px-wide board. Both removed View Missions shortcuts remain absent.
- **Inventory:** no solid dark-gray slab behind the cards; cached scenery shows through. Artwork wells have a lighter gray body and a short black gradient at the **top**, not the bottom; name/finish rows remain transparent. Pixel-eased scrolling and cached artwork/scenery remain; transparent scrolling uses the correct simple viewport repaint mode to avoid trails.
- **Clearly visible tab navigation:** incoming scenes slide/reveal over 280ms, timed from their first rendered frame. One cached component render is made per actual navigation, not per frame or ordinary refresh. Top-level/Store tabs and actual Inventory section-tab changes animate; purchase dialogs, unchanged-tab refreshes, filters and data updates do not.
- **Armoury:** the rarity dot is centered directly **below** each skin's name. Four-column layout, genuine Agent previews, 16-Agent paging, centered collections and green Redeem remain.
- **New Item:** the owner is already dimmed on the first popup frame. Continue/close restores the prior glass layer synchronously, with idempotent acknowledgement and no delayed second dim. The existing background lines rotate slowly (about one revolution per 100 seconds), independently of the gun, text and controls. Their timer stops when hidden/disposed. Catalog return remains a short bright reset, not another dark-to-visible dip.
- **Inspection and New Item identity:** genuine collection name under the gun name, with its collection emblem to the left of both. **110 genuine emblems are embedded**; exact sources/hashes accompany the release. The header uses the catalog's explicit collection rather than a guessed case title. Knife/glove collection exclusion and clean default-equipment inspection titles remain.
- **StatTrak and stars:** StatTrak items explicitly say **StatTrak™** in inspection/reward titles. Knives/gloves get exactly one leading **★**, ordered before StatTrak where applicable. Saved item names/IDs/quote keys are not rewritten. An audit of all **5,280** current catalog StatTrak entries found the **same PNG URLs** as their matching normal finish/wear variants, so no counterfeit counter artwork or unverified alternate URLs are invented; genuine available exterior/standard art is retained.

Previous first-unlock preparation, same-dialog case opening, two-second in-place Armoury redemption, Care Packages, save/progress/balance preservation and the 9–11M market policy remain.

### The listing dip and confirmed 9–11 million policy

A legacy repair compared **compact parent-lot counts** with old per-wear listing targets and discarded whole parents when there were too many. A constructed full-unit probe against the previous complete release reproduced **10,000,000 → 500,000 listed units**; the world ledger remained 10,000,000. Those units became unlisted NPC reserves, so the buffered restocker could later relist them—explaining how that bug can produce a collapse/recovery pattern. This identifies and reproduces a real failure path, **not a replay proving the cause of a particular historical session** without its save/log.

Once the world ledger is initialized, the legacy lot-count and StatTrak-scarcity trimming no longer run. An initialized empty book is not regenerated from scratch. The same probe now keeps **all ten million listings and every parent/ask/identity**.

Startup remains roughly **ten million real units**. The ongoing target is **9–11 million listed units**, centered on 10,000,000—not 900k–1.1M. Previous roughly-ten-million save baselines migrate to the new center while preserving supply, ownership, progress, pending items and restock counters. Reviews use the existing five-second worker, slowly jittered aim, small reserve-first batches and proactive recovery below 98.5% of the center. Old asks/parents are never repriced, expanded or deleted to hit a target. Only tightly capped common issuance is allowed when reusable reserves are exhausted; rare/gold issuance is excluded. This remains a finite-economy stabilizer, not an unlimited guarantee under extraordinary mass player ownership/destruction.

**Normal market sales/order flow continues while other pages are open. Simulated unboxing does not:** it pauses outside visible Market Home and resumes with a fresh 30–150-ms delay, without catch-up. Navigating away is not supposed to purge the book.

Current controlled validation: **20 native/artwork suites / 971 assertions and 19 headless suites / 578 assertions**, plus the old/current repair comparison and clean extracted build. The ten-minute full-book run stayed within the confirmed band with **zero issuance**; see VALIDATION.md for exact numbers and limitations.

## Care Packages and Store Home

- Store has **Home / Market / Tools / Armoury**. **Home replaces Misc.** The top-left gear opens the former General/Misc controls, including save/load, missions and statistics.
- Missions award their existing **Stars**, plus difficulty-scaled **XP**: 25 XP per rewarded star. Some missions therefore award more than 100 XP.
- **Every 100 XP earns a level. Every earned level automatically delivers one case and two random gun skins.** There is no weekly cap, manual claim or paid pass. Starting rank is Level 1; the first 100 XP reaches Level 2 and grants the first package. Remainder XP carries forward, and crossing several levels grants all their packages.
- A level-up redirects to Store Home and presents the delivered items in a **Care Package** reward panel. The rewards already belong to you; dismissing the prompt does not grant them again. Undismissed package rewards remain queued across save/load.
- Guns are selected from **Achroma, Harlequin, Ascent, Boreal and Radiant**: 124 genuine catalog entries. The eligible grades are Consumer, Industrial, Mil-Spec, Restricted and Classified. They use the existing normalized case/collection-style **5:1 progression between successive available tiers**. Classified is rarest; Covert, knives and gloves cannot drop from these packages. Genuine float bounds and random pattern IDs are retained.
- **Achroma is no longer redeemable in Armoury.** It remains in the catalog, market, Care Package pool and collection/trade-up data. The other 15 Armoury selectors retain their indices and the compact four-column browser. Weapon collections cost four stars; the pre-existing Agents collection costs fifteen.
- Store Home shows a dark reward-card row, orange Care Package/progression panel, current level, 100-XP progress and the latest delivered package.

## Trade-ups and navigation

- The eligible left pool is **permanently highest-quality first**; there is no sort toggle. Search and rarity filters remain.
- Eligible and selected skins expose rarity, wear, eight-decimal float, pattern ID and collection by **hovering the card itself or its content**. The separate trade-up info button is removed.
- **Proceed consumes the inputs, switches to main Inventory, then reveals the output.** The output is staged outside active Inventory and is added when its popup opens, not before. Its exact ID, float, pattern and history are saved while pending. An interrupted reveal can resume without losing or duplicating the output.
- Standard contracts still use ten inputs. Selecting a qualifying Covert infers the five-input gold contract; no Standard/Gold selector is added. Existing outcome probabilities and float formulas are preserved.
- Lightweight **280-ms visible slide/reveal transitions apply only to actual tab navigation**, never ordinary section/content refreshes or purchase confirmations. Returning from another top-level destination resets to main Everything, not a stale trade-up/storage/unlock/filter view, and preserves contract selections separately.

## Persistent global supply and buffered marketplace

The **total market-cap window, its Price History button and graph-only code are removed**. Recent-sales and individual-skin history graphs are retained. The independent ledger valuation remains available internally, without a sampling timer or cap UI. For each exact **name / wear / StatTrak** variant:

> **Capitalization = average current variant price × all surviving global units.**

The total is the sum over variants. This is **not** lowest ask × listed quantity.

The price estimator is the **quantity-weighted arithmetic mean of available individual asking prices across sites**, including each compact unit's fixed float premium. It is not an unweighted mean of lot heads. If no priced listings remain, the variant retains its last observed average; a newly issued, wholly unlisted variant starts from its known item/reference value. Unavailable prices do not turn into fabricated live penny quotes. This is simulated-market valuation, not a claim about executable real-world liquidity.

- The initial roughly-ten-million-unit world includes guns, knives, gloves, agents, cases, souvenir packages and terminals. Player-owned, stored, equipped and temporarily unrevealed units are counted, but stock/default equipment and nontradable keys are not.
- Buying, selling, trading, moving into storage, retrieving and equipping **transfer existing units**; they do not change global surviving quantity.
- A standard trade-up destroys ten units and creates one; a gold trade-up destroys five and creates one.
- Opening a case/package destroys the container and creates its reward. Armoury rewards, Care Packages, retail case issuance and explicit developer generation create new units. Retail buys are new issuance, not withdrawals from an existing marketplace listing.
- The single simulated-unboxing producer runs **only while Market Home is actually visible**. Leaving Home cancels its timer and in-flight commits. Returning starts a fresh random delay; hidden/closed time is never replayed. Each successful opening consumes an available simulated case/package and creates a surviving reward. It cannot consume a player's owned/stored/listed container. Its shared recent-history/feed rows reflect those openings, not decorative inventions.
- Both feed delay samplers remain randomized **30–150 ms**. The background producer schedules the next attempt only after its prior completion, so slow work cannot build a catch-up queue. No openings are replayed for time when the application was closed. Recently Sold remains an explicitly illustrative, Home-only, nontransactional feed.
- Routine new market offers **relist existing unlisted NPC units**, rather than minting global supply or relisting a player's owned/stored/pending unit. Surviving listing asks remain fixed. On restoring a saved world, regenerated NPC books are trimmed to circulating quantities instead of reviving consumed containers.
- Global quantities, creation/destruction counters, last variant averages and the buffered-stock baseline/target/counters are saved in the optional extension. Legacy cap-history fields are read only for save compatibility; no new cap samples are recorded. The five original save record schemas/UIDs remain unchanged. Older saves without the ledger seed it once from the generated book and imported player ownership.

Global capitalization and per-lot ask sums are aggregated off the EDT. Compact stock is not expanded into ten million heavyweight item objects. Initial stock is not reduced for responsiveness.

## Retained inventory, storage and opening behavior

- Top navigation: **Inventory / Loadout / Play (disabled) / Store**. Tools are bought in Store, not an Inventory shortcut.
- Inventory, deposit/storage contents and matching case/key views retain **eight columns** and regular Inventory styling. Keys and defaults cannot be stored. Storage search, paging, cross-page selection and capacity checks remain.
- Retrieval confirms the whole batch, returns to main Inventory and shows one New Items carousel. IDs, floats, patterns and acquisition times survive storage and save/load.
- Sort options remain **Quality (default), Newest, Alphabetical, Equip Slot, Collection, Equipped**. All defaults sort after collectibles in every mode. Naming, CT/T loadout dots, clean stock inspection names and integrated knife/glove/agent slots remain.
- Owned cases and matching $2.49 keys are consumed once; terminals remain keyless. Cases/packages are tradable, keys are not. Existing cents, quote source/time and unavailable reporting remain.
- Normal reel landing and early-close quick-open grant each determined reward exactly once. A completed result cannot grant it again. Dark dialog backing and elapsed-time fades avoid a white opening flash.
- Ten embedded main-menu backgrounds, persisted background selection, startup whole-card clicks, full preload/visible counters and fallback reporting remain. Other pages do not acquire character PNGs or shortcut clutter.

## Retained market and artwork behavior

- Existing asks are fixed. The existing five-second market refresher consumes cheapest available offers to raise the floor or introduces cheaper eligible offers to lower it, targeting **±0.25–0.50%**. Cents, book gaps, finite reserves and sparse demand can leave a tick unchanged or make the observed next floor differ from that target. There is no separate factor-repricing timer.
- Catalogs and individual pickers retain both price orders and global float orders. Existing unit identities, asks and floats survive other purchases. Float premiums remain monotonic, including capped FN gloves. Site inventories remain unequal, compact and independently selectable.
- Five-second sales-history buckets contain actual retained sale counts and mean prices; records are aggregated before chart truncation. Expensive skins/cases have lower simulated demand. Bounded histories do not invent missing older sales.
- Only **SkinSwap, Skin.land, NeonGrid, RelayMarket and VelvetTrade** expose swaps, with retained 105% player credit and 110–115% site valuation/haircuts. All balances/offers are simulated; no real trades or checkout occur.
- Genuine exterior artwork or the explicit standard-art fallback is retained. The twelve corrected Hand Wraps URLs use verified Valve exterior bins, not generated/recolored substitutes. Existing exact-asset mirror recovery remains.
- Ruby MW outlier handling remains disclosed as **modeled**, not a verified live $5–6k quote: only an implausible MW ask above twice the same Ruby FN reference is rejected, then a 15% FN discount is modeled. Plausible MW quotes and other variants remain intact.

## Project layout and verification

`SOURCE_MAP.md` lists all 187 production files. Core additions include `MissionBoard`, `ArmouryOrbit`, `SmoothScroll`, `BundledAgentPreviews`, `ItemPresentation`, `CollectionEmblems`, `InspectImageView`, `HighQualityImages`, `BufferedMarketSupply`, `GlobalSupply`, `BackgroundUnboxing`, `CarePackages`, `CareCollectionsData` and `PageTransitions`; existing services integrate them. Catalogs, scenery and collection metadata remain embedded in Java, with no added runtime library/resource-folder setup.

See **VALIDATION.md** for current-source results, full-stock performance, save compatibility and platform/fixture limitations. `SOURCE_SHA256SUMS.txt` and `SHA256SUMS.txt` identify this complete release. Verification helpers are development-only; bulky catalog/artwork fixtures are not application dependencies and are not redistributed in the source ZIP.
