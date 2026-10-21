# Validation — card, collection and interactive inspection follow-up

**2026-10-20 · complete 187-source Java project · JDK 11+.**

## Current results

| Verification | Result |
|---|---:|
| Production UTF-8 / Java 11 compilation | PASS |
| Native Swing/artwork suites | **20 / 20; 971 passing assertions** |
| Retained headless suites | **19 / 19; 578 passing assertions** |
| New card/inspection suite | **36 assertions**, included above |
| Previous visual suite / exact-quote startup probe | **44 + 1 assertions**, included above |
| Embedded genuine collection emblems / Agent previews | **110 / 63**, source/hash audit retained |
| Original five serialized save descriptors / UIDs | Unchanged; checked again from the extracted ZIP |

`verification/card-release-proof.json` identifies the source manifest, native results and performance measurements. `card-headless-summary.json` records the headless results. Actual logs are `card-*.txt`.

All suites executed against unchanged final production sources. Nineteen native suites passed in the complete run; the remaining IndividualMarketChecks passed on rerun after correcting its old first-card assumption: it now selects the exact supplied lot rather than assuming the highest-priced card appears first. Its original one-unit, stock/float/identity assertions remain. This correction follows the requested ascending default, not a relaxed market assertion. The headless run passed after restoring omitted external lab fixture aliases. All 19 headless suites were rerun together.

Some retained textual guards inspect the archived monolith, while runtime assertions execute current modular bytecode; these legacy textual guards are not represented as fresh modular-source inspection.

## New directed coverage

- Actual card paint pixels: **105/109/113** lighter gray only in the artwork well; short black shade at the top; rarity strip ends the well; transparent weapon/name/finish rows below it.
- Actual Inventory navigation: no Storage Units button. Equipment contains exactly tools—storage units and unused Name Tags—not guns, stock defaults, cases or keys. Tool search works. A loadout slot still routes to matching owned/default weapons in Everything Inventory.
- Actual inspection dialog: collection under name, **64px** left emblem (formerly 54px), rarity-colored line directly below the name, original native-resolution PNG passed to the interactive view.
- Dispatched mouse events change pan coordinates and rendered pixels; wheel zoom, bounded 0.5–4× scale, Reset View and double-click reset work. The instructions explicitly say **2D image**, not 3D rotation.
- High-DPI scaler provides a genuine-detail 2× raster variant when sufficient original pixels exist; the same logical thumbnail size is retained. No sharpened/generated replacement skin detail is invented.
- Revolution, Phoenix and Chroma case New Item headers resolve the matching genuine collection and enlarged emblem. Container resolution also works before the marketplace's name lookup map is initialized.
- Market catalog selector and actual groups start ascending by ask. Individual offers start lowest-price first with exactly the two price and two global float directions; no Default-order option remains.
- A **normally landed real unboxing flow** shows its genuine collection header/emblem and rarity line after the actual fade reaches full opacity. Its owned result retains the native PNG instead of a permanent 130px reduction, and Close still grants no duplicate reward.

Supporting current stills: `verification/visual-inventory.png`, `visual-inspect.png`, and `visual-unboxing.png`. They support, but do not replace, the event/pixel assertions. The normal-unboxing fixture includes genuine source artwork for all seventeen Revolution finishes, rather than relying on a generic fixture fallback for its random result.

## Image-quality scope

Downloads and the disk cache already retain decoded native PNG dimensions. The update removes the unboxing ownership path's old permanent 130×88 reduction and replaces skin scaling with shared bicubic/quality rendering across inventory, markets, rewards, loadout/collection/trade-up views and cached reel sprites. It retains native-detail 2× variants where source dimensions permit. Interactive inspection paints the original source directly at the selected pan/zoom, not an already resized card thumbnail.

This improves rendering and avoids throwing away available detail. It does **not** claim an upstream low-resolution PNG has become a higher-detail asset. Original catalog/wear selection, TLS verification, explicit standard-art fallback and source provenance remain; no AI-generated skins, fabricated StatTrak counters or reconstructed unseen surfaces are used. Bundled collection/Agent previews remain genuine assets at their documented source-preview resolution.

## Inspection research and selected approach

Valve's official Workshop Resources offers a CS2 weapon geometry archive:
https://www.counter-strike.net/workshop/workshopresources

The downloaded archive was inspected: **35 OBJ weapon meshes**, no textures and no knife/glove meshes. Source 2 Viewer documents model/material glTF export from local game assets: https://s2v.app/ . Public base geometry alone is not a complete skin-accurate textured inspector.

The user selected **genuine-PNG drag/zoom/reset for now**. No 3D asset archive, untextured substitute weapon, new graphics runtime or false 360° inspection is shipped. A flat PNG cannot reveal the other side of the item.

## Retained economy, startup and saves

The real full-stock test ran **120 bounded cycles / ten simulated minutes**:

- Initial **10,000,000** listings; min **9,851,453**, max **10,625,903**, final **9,981,827**.
- **9,303,092** reserve units relisted; **zero** new units issued.
- EDT heartbeat **30ms p95 / 72ms maximum** in this controlled run.

The 9–11M reserve-first policy, global quantities, compact unit identities, fixed surviving asks, float/roll/trade-up economics and Home-only/no-catch-up simulated opening producer remain. Eight math/model/supply files compare byte-for-byte with the previous 185-source release (`card-preserved-models.json`). InventoryItem's thumbnail-rendering methods changed, not its model fields or saved record descriptors; the trade-up screen's artwork scaling changed, not its outcome math.

Retained suites cover actual save/load and legacy migration, balances/Stars/XP/missions, loadouts, storage and full-batch retrieval, stable IDs/floats/patterns, pending rewards, early-close/opening and Armoury exactly-once delivery. Display headers do not rewrite saved canonical names, quote keys or ownership.

The previous startup queue fix remains: initial exact quote commit/cache work does not wait for per-price UI refresh/ROI callbacks, while real existing-book/player repricing remains intact. The exact-price/blocked-EDT probe passes again. Retained visible tab-only transitions, one-column missions, immediate New Item dim/synchronous cleanup, slow rotating rays and two-second Armoury flow pass their suites too.

## Limits and packaging

Tests ran on **Linux/OpenJDK 11 under Xvfb**, with controlled catalog/quote/artwork fixtures. These are not native macOS/Windows visual tests, not a fresh live-price audit and not an arbitrary-hardware/network performance guarantee. The verified catalog's **5,280 StatTrak entries share their matching normal/wear PNG URLs**; the existing source audit and explicit StatTrak display labels remain.

`python3 verification/package_release.py [output.zip]` validates the 187-source manifest/current proof, original save fixture hash, all embedded Agent/collection preview hashes, preserved math hashes and StatTrak audit counts. It writes a whole-project manifest, makes a complete ZIP, verifies every archived hash/CRC, extracts it, builds with JDK 11 and compares original save descriptors before replacing the destination ZIP. It writes SHA-256 and package-verification sidecars. Lab-only fixtures are not runtime dependencies and the packaging script does not pretend to rerun their desktop/network tests.

Current README, card-* evidence and manifests override historical visual/polish/buffer counts, source hashes and superseded UI policies. Earlier logs are retained compressed.
