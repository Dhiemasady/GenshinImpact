'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "e714f370284885c2167bbcf3d221d8c0",
"assets/assets/google_fonts/Karla.zip": "9de264460799580de6d5ea4fad5947bd",
"assets/assets/images/background/genshin-impact-07.jpg": "909c0253eef16a7177488a61d2272784",
"assets/assets/images/background/genshin-impact-bg.jpg": "ef05e63264be77d3e6aea9f34fb24a8c",
"assets/assets/images/background/genshin-impact-bg2.jpg": "7f809325cd3ef264045c275c45e71405",
"assets/assets/images/background/vision.gif": "53a6ad978020524c5d0e16f2645a8500",
"assets/assets/images/characters/anemo/jean.webp": "5087551cc944616e6c1b9041e880a6d8",
"assets/assets/images/characters/anemo/sucrose.webp": "d77d31d9314f460a928582846e7c1df4",
"assets/assets/images/characters/anemo/venti.webp": "3f3f52d19ec1d4fcc7d81dd84d368d1a",
"assets/assets/images/characters/anemo/xiao.webp": "515b6e820fae3ab5a87a0b807fd9cbe8",
"assets/assets/images/characters/anemo-con/jean.webp": "c091b51a790778c21e8899233315566c",
"assets/assets/images/characters/anemo-con/sucrose.webp": "a649d31443e252390568a51c72e163ee",
"assets/assets/images/characters/anemo-con/venti.webp": "2c194101a0e2cac5fbbdfcbea32ce07e",
"assets/assets/images/characters/anemo-con/xiao.webp": "8b3321836138127f375b15786039a6cb",
"assets/assets/images/characters/cryo/chongyun.webp": "c29666f7138939fe55a72e3564c274ce",
"assets/assets/images/characters/cryo/diona.webp": "e60d67c3a3735cae51ac02d42b9efb46",
"assets/assets/images/characters/cryo/kaeya.webp": "018a7fcbef94d31a3051cbd581baf583",
"assets/assets/images/characters/cryo/qiqi.webp": "a5bc045488df07a561c4091c6952b828",
"assets/assets/images/characters/cryo-con/chongyun.webp": "b6b69c305691c61b6ff535ddda0bafc6",
"assets/assets/images/characters/cryo-con/diona.webp": "2ff73aa1ae26cc10680d9f094edf2e44",
"assets/assets/images/characters/cryo-con/kaeya.webp": "72e5f6c6d1bcf9109867534a71ef9c43",
"assets/assets/images/characters/cryo-con/qiqi.webp": "22f73114c5d52ac12d6e21e2e39ec871",
"assets/assets/images/characters/electro/beidou.webp": "461ae5d789551922d1aefd6db79d2090",
"assets/assets/images/characters/electro/fischl.webp": "2352e8d8be243f2be347ed31035abb2a",
"assets/assets/images/characters/electro/keqing.webp": "f9141bf30399b24bfefbb9c2f3a63302",
"assets/assets/images/characters/electro/lisa.webp": "4361541193b67872e6830beb7e2737de",
"assets/assets/images/characters/electro/razor.webp": "df36d07020c752cca91727e369846d9f",
"assets/assets/images/characters/electro-con/beidou.webp": "eb00b3c12095c0a76dca4e9debe9697f",
"assets/assets/images/characters/electro-con/fischl.webp": "ba39e89531a71b0916f73911e806e11d",
"assets/assets/images/characters/electro-con/keqing.webp": "f2c150bd0da53167dcf9b59896015326",
"assets/assets/images/characters/electro-con/lisa.webp": "6fb60705750d97e04957f5294e0eff29",
"assets/assets/images/characters/electro-con/razor.webp": "f1cd3839b5b7f8dc8adb5bb67c4324dc",
"assets/assets/images/characters/fivestarBG.jpg": "98779d1b360c70c67d935a510e5c59f9",
"assets/assets/images/characters/full-art-anemo/jean.webp": "9ebeac2cf8a627563e054b957a0d6e13",
"assets/assets/images/characters/full-art-anemo/sucrose.webp": "8a30c1e607cf3da9bb4611798ebe397d",
"assets/assets/images/characters/full-art-anemo/venti.webp": "c4c4bf000290909bfef76d597158bffe",
"assets/assets/images/characters/full-art-anemo/xiao.webp": "0c68b2768439af0cdb85d5cba9f8335c",
"assets/assets/images/characters/full-art-cryo/chongyun.webp": "1800f49230411ca086c5fe92a7878a47",
"assets/assets/images/characters/full-art-cryo/diona.webp": "4510e5b89ac4f471dc69cf055d0f7a39",
"assets/assets/images/characters/full-art-cryo/kaeya.webp": "b670ebdb3e346bbe924e0562acf42dcc",
"assets/assets/images/characters/full-art-cryo/qiqi.webp": "23d8486cf7e184dd52262419da0226fe",
"assets/assets/images/characters/full-art-electro/beidou.webp": "d3bd8cf02fbaccf06af2d1cefc07f87c",
"assets/assets/images/characters/full-art-electro/fischl.webp": "00fe34df751756f69d816108d167a84f",
"assets/assets/images/characters/full-art-electro/keqing.webp": "d3dc502cdf9364b54fb5314aeb9bbb95",
"assets/assets/images/characters/full-art-electro/lisa.webp": "a0eab9edd07a0b1d5da1e31052bc1d29",
"assets/assets/images/characters/full-art-electro/razor.webp": "15526f875ffdf4f6ca8a3329ae6fb81e",
"assets/assets/images/characters/full-art-geo/ningguang.webp": "a590d4b27039bf3bf48fd6d507691481",
"assets/assets/images/characters/full-art-geo/noelle.webp": "4fb45db3a889e41ff752bd133c4fe118",
"assets/assets/images/characters/full-art-geo/zhongli.webp": "2c0fc7998aa4aeec10582aa1bc11635b",
"assets/assets/images/characters/full-art-hydro/barbara.webp": "ed79d375e383fe38bff964795f4e66ac",
"assets/assets/images/characters/full-art-hydro/mona.webp": "5a2927b94c910bb5576f5fe40cdd527a",
"assets/assets/images/characters/full-art-hydro/tartaglia.webp": "9b7332c7293e9798fc22bd8210b9f6b0",
"assets/assets/images/characters/full-art-hydro/xingqiu.webp": "bb07e3195f972625ff767aeda4d61c2d",
"assets/assets/images/characters/full-art-pyro/amber.webp": "cf7c96ef841e0cc6f03a6020c14b962e",
"assets/assets/images/characters/full-art-pyro/bennett.webp": "0a3521b48539aa6c90146946cadb87ca",
"assets/assets/images/characters/full-art-pyro/diluc.webp": "d359abf2aac0795b8dc1565b430da554",
"assets/assets/images/characters/full-art-pyro/klee.webp": "48e9e3f056fa684b1951fae3f27b5768",
"assets/assets/images/characters/full-art-pyro/xiangling.webp": "7649cb28708d42f68836f644946b4fa6",
"assets/assets/images/characters/full-art-pyro/xinyan.webp": "4ace9812214e629489a64013bcc46123",
"assets/assets/images/characters/geo/ningguang.webp": "f056a1ef40efb57e1cf46f676986f837",
"assets/assets/images/characters/geo/noelle.webp": "15b367ed664fe450a975c48a94b930e8",
"assets/assets/images/characters/geo/zhongli.webp": "0280cd8b98392d4922426fc982b5cec8",
"assets/assets/images/characters/geo-con/ningguang.webp": "2b1a8ff55ae8b52792373a411c1ee855",
"assets/assets/images/characters/geo-con/noelle.webp": "e0bfd9e92092a614af233a24ec90ba46",
"assets/assets/images/characters/geo-con/zhongli.webp": "52e9fb9d0b0db0b853c0fb040c3bdfec",
"assets/assets/images/characters/hydro/barbara.webp": "2193f8775356455a3070e08577272613",
"assets/assets/images/characters/hydro/mona.webp": "f120816fc10a11a914a195ac2c1f2245",
"assets/assets/images/characters/hydro/tartaglia.webp": "dc76988bb7d8381da1b3720cf9f7d210",
"assets/assets/images/characters/hydro/xingqiu.webp": "aefe7f6a91dcaa0bbd71abef612631d3",
"assets/assets/images/characters/hydro-con/barbara.webp": "d4eb0870f34616f3fc9d84b2c347d333",
"assets/assets/images/characters/hydro-con/mona.webp": "ba1a6cebf0bf1dc2ca9b8a5edb024107",
"assets/assets/images/characters/hydro-con/tartaglia.webp": "802453407ebb20e7c7bdda0621714650",
"assets/assets/images/characters/hydro-con/xingqiu.webp": "e0504cef1edfa924e424b81a6da6bd8a",
"assets/assets/images/characters/pyro/amber.webp": "eeb86a2e6c741dbb8b8d70672a6f61f9",
"assets/assets/images/characters/pyro/bennett.webp": "17b8d8b3ab6f13fe710eae55d35abf59",
"assets/assets/images/characters/pyro/diluc.webp": "b9a8998f558a12c3acc3d02fe0b48951",
"assets/assets/images/characters/pyro/klee.webp": "a03e71f9c9e85ea76ba72c6eabeca568",
"assets/assets/images/characters/pyro/xiangling.webp": "1bb0f35a84f06a975d684f3276edd7d0",
"assets/assets/images/characters/pyro/xinyan.webp": "4e3a5ffe3bc556f3fd9f33dcd5e8bf4d",
"assets/assets/images/characters/pyro-con/amber.webp": "601c69387e9e5c03613b286526f1f17c",
"assets/assets/images/characters/pyro-con/bennett.webp": "17f23fbf93a27093e17939117a96a197",
"assets/assets/images/characters/pyro-con/diluc.webp": "7cfa5dea3e72ff41e770037139dfe291",
"assets/assets/images/characters/pyro-con/klee.webp": "f432867a9e8a038725e3f4c29ac7cdd2",
"assets/assets/images/characters/pyro-con/xiangling.webp": "1ae0a9c31429d68a272f3f25b29c0d4f",
"assets/assets/images/characters/pyro-con/xinyan.webp": "fe3ee4cac8f9106ca9fe5b6a9b98e98e",
"assets/assets/images/icons/weapons/bow.webp": "55997a2ad0cf5ff8aca7083b25788b05",
"assets/assets/images/icons/weapons/catalyst.webp": "e73029cb130a06ff1f784f30f2155cde",
"assets/assets/images/icons/weapons/claymore.webp": "718f6837536c93b544663b7cb3835a89",
"assets/assets/images/icons/weapons/polearm.webp": "ae9bdcd48e6fef236cff1c46ed9ee246",
"assets/assets/images/icons/weapons/sword.webp": "061a1cc7e7f14a998cf90042950ec310",
"assets/assets/images/raritys/1-stars.webp": "b3eed862597bf2608efec4686082ab49",
"assets/assets/images/raritys/2-stars.webp": "a900655765528c8a460474a4be66be80",
"assets/assets/images/raritys/3-stars.webp": "bacc6ae03891a1b25bef580e5f324f12",
"assets/assets/images/raritys/4-stars.webp": "16f6560f8eefd1bae4822bfca807c49c",
"assets/assets/images/raritys/5-stars.webp": "3957e04cc3aa14fe4158f8f377b6760d",
"assets/assets/images/visions/anemo.png": "68ebe8079f9582bca4c94569abec7b5f",
"assets/assets/images/visions/cryo.png": "836ae8df9d5846fec04895ec08320207",
"assets/assets/images/visions/electro.png": "af270725c9c30ea1acaa9f3df8303822",
"assets/assets/images/visions/geo.png": "5343adb3fda35edd0eef0f766e1c942f",
"assets/assets/images/visions/hydro.png": "407d444173b589d9c2a54b9bf003048f",
"assets/assets/images/visions/pyro.png": "ea8771925acd519c06183472b08e4b47",
"assets/assets/images/weapons/2nd-bow/alley-hunter.webp": "bba103c95817e20c6f684eff08ef2744",
"assets/assets/images/weapons/2nd-bow/amos-bow.webp": "ef9aef1875b865e644473bbcaa18331d",
"assets/assets/images/weapons/2nd-bow/blackcliff-warbow.webp": "edc17f0e7b48d027a20e68a984de6c0b",
"assets/assets/images/weapons/2nd-bow/compound-bow.webp": "f1a8368b155f7e3757362261e356123d",
"assets/assets/images/weapons/2nd-bow/ebony-bow.webp": "ad44913940883cc8b6a586464e1f0de8",
"assets/assets/images/weapons/2nd-bow/favonius-warbow.webp": "acb89281d269dd4235e62c4263c72146",
"assets/assets/images/weapons/2nd-bow/hunters-bow.webp": "2028348e8d8b692fc3ebd6a061a16048",
"assets/assets/images/weapons/2nd-bow/messenger.webp": "0f3211dd93b275c3b54096754d75a73f",
"assets/assets/images/weapons/2nd-bow/prototype-crescent.webp": "644dbb0591710e344188acfae6725c8f",
"assets/assets/images/weapons/2nd-bow/raven-bow.webp": "50c45bfb79a4d5ee559aabe0983c04c3",
"assets/assets/images/weapons/2nd-bow/recurve-bow.webp": "1ee3fbeac70be2f71fc62adcb6fc65c4",
"assets/assets/images/weapons/2nd-bow/royal-bow.webp": "f8d8691fcb73225ca4dac8fee0b53daa",
"assets/assets/images/weapons/2nd-bow/rust.webp": "51fcada99f12095cbd278a26fa5679ca",
"assets/assets/images/weapons/2nd-bow/sacrificial-bow.webp": "91c6c42bc65b9a302fbf01fde8fac327",
"assets/assets/images/weapons/2nd-bow/seasoned-hunters-bow.webp": "fe37d588b74a40da69febec779017095",
"assets/assets/images/weapons/2nd-bow/sharpshooters-oath.webp": "9637a92d0bfb550d2b6c7ce4d8ae92c8",
"assets/assets/images/weapons/2nd-bow/skyward-harp.webp": "a648f9a963656617a43602cc410c09b4",
"assets/assets/images/weapons/2nd-bow/slingshot.webp": "18843711b695c7a2e43089b19c682488",
"assets/assets/images/weapons/2nd-bow/the-stringless.webp": "3911a997ed38422b2063b925c7d7c271",
"assets/assets/images/weapons/2nd-bow/the-viridescent-hunt.webp": "29381453b6c8b7527081b2e7fd01a56a",
"assets/assets/images/weapons/2nd-catalyst/amber-catalyst.webp": "6b7d9526023057911518b0afd3d0f2b2",
"assets/assets/images/weapons/2nd-catalyst/apprentices-notes.webp": "6e5c640e02b45a3a6f594cf1732b000b",
"assets/assets/images/weapons/2nd-catalyst/blackcliff-amulet.webp": "0a772b4699716a8102f25148e0d1cede",
"assets/assets/images/weapons/2nd-catalyst/emerald-orb.webp": "e3aa8a36075c777f15369c4896cb0be6",
"assets/assets/images/weapons/2nd-catalyst/eye-of-perception.webp": "284a9fc0af5d60725b6eac73356c1e86",
"assets/assets/images/weapons/2nd-catalyst/favonius-codex.webp": "72a60189d625e6e909d3abbe57b32c87",
"assets/assets/images/weapons/2nd-catalyst/lost-prayer-to-the-sacred-winds.webp": "d361602fbeceb6cc1d7f244da7db1db2",
"assets/assets/images/weapons/2nd-catalyst/magic-guide.webp": "158a91b8b73880ce78f0b392e829caa6",
"assets/assets/images/weapons/2nd-catalyst/mappa-mare.webp": "4ff12e4ae7d2cb96dbce6682f544c0b3",
"assets/assets/images/weapons/2nd-catalyst/otherworldly-story.webp": "e7c82367855bcd17f50c04a5d0aec5a3",
"assets/assets/images/weapons/2nd-catalyst/pocket-grimoire.webp": "e568645fdefb30d06e1509dc303c7d44",
"assets/assets/images/weapons/2nd-catalyst/prototype-malice.webp": "555eafc0bc2fccb2f8e238d272469ca1",
"assets/assets/images/weapons/2nd-catalyst/royal-grimoire.webp": "afaa36441a1b89ea3648c13b9c831280",
"assets/assets/images/weapons/2nd-catalyst/sacrificial-fragments.webp": "bf48da7c5717f0c1b75a5f256ff64cce",
"assets/assets/images/weapons/2nd-catalyst/skyward-atlas.webp": "d3daef32b262747cc7a100fd1a4f4eb3",
"assets/assets/images/weapons/2nd-catalyst/solar-pearl.webp": "80a7cb5454eb2dc487e6d4700049d52d",
"assets/assets/images/weapons/2nd-catalyst/the-widsith.webp": "deaab7c5863e87bb78d71f0919a46694",
"assets/assets/images/weapons/2nd-catalyst/thrilling-tales-of-dragon-slayers.webp": "9ab3d6db5bb6c35d6fc40310d2da3e71",
"assets/assets/images/weapons/2nd-catalyst/twin-nephrite.webp": "7eaa459e248e796f98c0d7a0f232200e",
"assets/assets/images/weapons/2nd-catalyst/wine-and-song.webp": "a7d31b6c404f0f595dee243affa7d244",
"assets/assets/images/weapons/2nd-claymore/blackcliff-slasher.webp": "bbe083e34209dd95f6772a04ba030b92",
"assets/assets/images/weapons/2nd-claymore/bloodtainted-greatsword.webp": "3a2de3c6e913821868368ebea223e934",
"assets/assets/images/weapons/2nd-claymore/debate-club.webp": "a60803c8d637b1a420159bd3adead2b5",
"assets/assets/images/weapons/2nd-claymore/favonius-greatsword.webp": "2e5ccca3e0b017a4a5162c5163ecd92f",
"assets/assets/images/weapons/2nd-claymore/ferrous-shadow.webp": "8cc99536224c3b9dc243ae7fc31bde68",
"assets/assets/images/weapons/2nd-claymore/lithic-blade.webp": "ba14fca39f864f3a1c24f8a00947cb81",
"assets/assets/images/weapons/2nd-claymore/old-mercs-pal.webp": "9e3f71c610e49c4c23a898b0baf97ea3",
"assets/assets/images/weapons/2nd-claymore/prototype-aminus.webp": "4e0477b30a81c8d9c314aa7fd1a3ca56",
"assets/assets/images/weapons/2nd-claymore/quartz.webp": "b898bef3ea014662c9909eb110ed704b",
"assets/assets/images/weapons/2nd-claymore/rainslasher.webp": "e8f8e224edc259250581960a52ef5615",
"assets/assets/images/weapons/2nd-claymore/royal-greatsword.webp": "79070bb1dccdb79a2bbfa24e8d625ba3",
"assets/assets/images/weapons/2nd-claymore/sacrificial-greatsword.webp": "e961819d11e494694c4ff69cfb591424",
"assets/assets/images/weapons/2nd-claymore/serpent-spine.webp": "c95112f244e1c7dd19c981ac353ae032",
"assets/assets/images/weapons/2nd-claymore/skyrider-greatsword.webp": "31bd3f77c3e22b629f159841900b55e9",
"assets/assets/images/weapons/2nd-claymore/skyward-pride.webp": "a464dc0f3235ee5966f8776e0e68472f",
"assets/assets/images/weapons/2nd-claymore/the-bell.webp": "32def82286c0ed7b6fb721d3ebde3147",
"assets/assets/images/weapons/2nd-claymore/waster-greatsword.webp": "80dd6267c8e2ee1ebe6e46e24ecb8a94",
"assets/assets/images/weapons/2nd-claymore/white-iron-greatsword.webp": "3fbf957268b44d5e59a1cf4b8e5590d6",
"assets/assets/images/weapons/2nd-claymore/whiteblind.webp": "57d24770769a3ea434192c6053cea659",
"assets/assets/images/weapons/2nd-claymore/wolfs-gravestone.webp": "7f74e72532063f4052a89fe365a079a8",
"assets/assets/images/weapons/2nd-polearm/beginners-protector.webp": "a2a29c4d9903b6a586cb7ba7472d3a55",
"assets/assets/images/weapons/2nd-polearm/black-tassel.webp": "764675242431935dfb9a898ce8526392",
"assets/assets/images/weapons/2nd-polearm/blackcliff-pole.webp": "13f2cbf3ffe766438d2d50d252748386",
"assets/assets/images/weapons/2nd-polearm/crescent-pike.webp": "a83cf928c85994b94c40bf4ff1ad5f16",
"assets/assets/images/weapons/2nd-polearm/deathmatch.webp": "da64e7650675816bd59b370d7064e0ec",
"assets/assets/images/weapons/2nd-polearm/dragons-bane.webp": "c131697ae12012385661db4764d4338f",
"assets/assets/images/weapons/2nd-polearm/favonius-lance.webp": "019fdf94f3f29da08659379073680fa1",
"assets/assets/images/weapons/2nd-polearm/halberd.webp": "042ef3c755f0dfd71466274a5a13c00f",
"assets/assets/images/weapons/2nd-polearm/iron-point.webp": "44c5307bcae1772f83e1115cd86b26a9",
"assets/assets/images/weapons/2nd-polearm/kunwus-iris-rift.webp": "c193da73dbe85bf82e9e66068c499284",
"assets/assets/images/weapons/2nd-polearm/lithic-spear.webp": "29d0c116cb52c1bae033bfe7568a736c",
"assets/assets/images/weapons/2nd-polearm/primordial-jade-winged-spear.webp": "cec253df8f7c0d6876299f99ad6fc7f9",
"assets/assets/images/weapons/2nd-polearm/prototype-grudge.webp": "6420cf2ac9bffd4e81ef2a650aba04f6",
"assets/assets/images/weapons/2nd-polearm/skyward-spine.webp": "fe7599e03e3f9bae9565130269ecf9ab",
"assets/assets/images/weapons/2nd-polearm/white-tassel.webp": "97e23b1c1d88287e0ebeb09a945c2f76",
"assets/assets/images/weapons/2nd-sword/aquila-favonia.webp": "fb789af927282d3989d6b3a92a6906d8",
"assets/assets/images/weapons/2nd-sword/blackcliff-longsword.webp": "0c85fbc4bdd6984fec5edfd1f7bb841f",
"assets/assets/images/weapons/2nd-sword/cool-steel.webp": "b7f2b49c619f70ba9ffaba1eb2a9eb0e",
"assets/assets/images/weapons/2nd-sword/dark-iron-sword.webp": "5a07fbea213e79e76cb41cb1986ba224",
"assets/assets/images/weapons/2nd-sword/dull-blade.webp": "488f752b0ab76d89af0cbe3ab9f8cb5e",
"assets/assets/images/weapons/2nd-sword/favonius-sword.webp": "d22957071bd725c68da5946aa785d520",
"assets/assets/images/weapons/2nd-sword/fillet-blade.webp": "6227b6c490e49a36fc35010d255f36a0",
"assets/assets/images/weapons/2nd-sword/harbinger-of-dawn.webp": "225990550ea0a220954f7901eeba803f",
"assets/assets/images/weapons/2nd-sword/iron-sting.webp": "dd018e0bcac14ea0a8bed6a62867f526",
"assets/assets/images/weapons/2nd-sword/lions-roar.webp": "1e89569e3fd3ede6d71789e06ff0d588",
"assets/assets/images/weapons/2nd-sword/prototype-rancour.webp": "b87be227ef68b154502159ee01b1b050",
"assets/assets/images/weapons/2nd-sword/royal-longsword.webp": "b1cac5ceb2084d37e833a73ccdb29532",
"assets/assets/images/weapons/2nd-sword/sacrificial-sword.webp": "a053174cbdc15eb8e5e3824807e09c4c",
"assets/assets/images/weapons/2nd-sword/silver-sword.webp": "1cd03fdf478eeb8cdf93ffc85eb0754d",
"assets/assets/images/weapons/2nd-sword/skyrider-sword.webp": "faa9d6cd9560ddb81eb21f595eb266dc",
"assets/assets/images/weapons/2nd-sword/skyward-blade.webp": "cccf3fa5ff618645339273b85f13ae4d",
"assets/assets/images/weapons/2nd-sword/the-alley-flash.webp": "bdc896a1883cb9fd9600c780ae2f8187",
"assets/assets/images/weapons/2nd-sword/the-black-sword.webp": "541a88e0c5017aed5aacee9e443ff29b",
"assets/assets/images/weapons/2nd-sword/the-flute.webp": "7e6c3ff3b60417b9987df6daba1f159d",
"assets/assets/images/weapons/2nd-sword/travelers-handy-sword.webp": "98f31458dd93243b3343cac9bbbca478",
"assets/assets/images/weapons/bow/alley-hunter.webp": "3ef2491c61e28f4303477d59fe0d8b18",
"assets/assets/images/weapons/bow/amos-bow.webp": "97e67e3c01022d4839cc0ec1016c2be3",
"assets/assets/images/weapons/bow/blackcliff-warbow.webp": "f7ca52057957142d8fb70454e119c54b",
"assets/assets/images/weapons/bow/compound-bow.webp": "b70b621e161316d5545f9787a0348bbe",
"assets/assets/images/weapons/bow/ebony-bow.webp": "ad44913940883cc8b6a586464e1f0de8",
"assets/assets/images/weapons/bow/favonius-warbow.webp": "fa6a96a79dd9ccc32b02b911f74fa594",
"assets/assets/images/weapons/bow/hunters-bow.webp": "3af8ed2a0aeaf3d054b1d3081c164588",
"assets/assets/images/weapons/bow/messenger.webp": "b10e5213be4fd9b652dd95bc587b9221",
"assets/assets/images/weapons/bow/prototype-crescent.webp": "678054da602291e522177c3633aa16b8",
"assets/assets/images/weapons/bow/raven-bow.webp": "cf857c2549157e4aa360fa65663509c3",
"assets/assets/images/weapons/bow/recurve-bow.webp": "93f8dec610415d78d0979ce95acee68b",
"assets/assets/images/weapons/bow/royal-bow.webp": "bd1f955ce191ce96ee3ba85eddd1c1c9",
"assets/assets/images/weapons/bow/rust.webp": "65388629aee644ad9d1cc9e98d114f8f",
"assets/assets/images/weapons/bow/sacrificial-bow.webp": "e029bd903a73f1ffcd7f86e2bc5d5faf",
"assets/assets/images/weapons/bow/seasoned-hunters-bow.webp": "af76ecc2e6ef0d659caca366de8ee213",
"assets/assets/images/weapons/bow/sharpshooters-oath.webp": "413234226146c847a2677dd975cb41dc",
"assets/assets/images/weapons/bow/skyward-harp.webp": "56d8118b938e4706197b37a270c9c597",
"assets/assets/images/weapons/bow/slingshot.webp": "7dfede568f9867e2b30199acf4720b6d",
"assets/assets/images/weapons/bow/the-stringless.webp": "7f2c010120e8963e289e56e11192807d",
"assets/assets/images/weapons/bow/the-viridescent-hunt.webp": "59544f258421dbd4f0c8c953813cc2aa",
"assets/assets/images/weapons/catalyst/amber-catalyst.webp": "2358ce06d999e52ef7d6a2774d04f685",
"assets/assets/images/weapons/catalyst/apprentices-notes.webp": "a9dcafc9bb3a23cb1752a8860dbd3d3d",
"assets/assets/images/weapons/catalyst/blackcliff-amulet.webp": "6549f28c8024e320da7e4885a05bf5c5",
"assets/assets/images/weapons/catalyst/emerald-orb.webp": "49b2356809261b6c5fb2f9ed2dfb512b",
"assets/assets/images/weapons/catalyst/eye-of-perception.webp": "6dabd8a078b6dd9e6a25fd7014352215",
"assets/assets/images/weapons/catalyst/favonius-codex.webp": "f80e9607d6f04746e1440ce419a452b5",
"assets/assets/images/weapons/catalyst/lost-prayer-to-the-sacred-winds.webp": "6c028c93290d72f91161afceefe013aa",
"assets/assets/images/weapons/catalyst/magic-guide.webp": "967365ed219f53e3ff7343c1b53f32e3",
"assets/assets/images/weapons/catalyst/mappa-mare.webp": "cfaf3dde71c87bdeb4ec9bb0d6eebcf0",
"assets/assets/images/weapons/catalyst/otherworldly-story.webp": "b094e095bf313fbcb0875a66ce5581bc",
"assets/assets/images/weapons/catalyst/pocket-grimoire.webp": "468030b187df94b20caee66e6a68abac",
"assets/assets/images/weapons/catalyst/prototype-malice.webp": "578c133a105ababd6631c00becc31d45",
"assets/assets/images/weapons/catalyst/royal-grimoire.webp": "f4546910576e3768454944e0b67d2024",
"assets/assets/images/weapons/catalyst/sacrificial-fragments.webp": "cc1dbee4a72415c72d332a673646bea6",
"assets/assets/images/weapons/catalyst/skyward-atlas.webp": "871207a57c54e69a3cd3acacc5491066",
"assets/assets/images/weapons/catalyst/solar-pearl.webp": "9146073c48df914492ada7e943086657",
"assets/assets/images/weapons/catalyst/the-widsith.webp": "35e144b8ac14a314547bd5599684f169",
"assets/assets/images/weapons/catalyst/thrilling-tales-of-dragon-slayers.webp": "8c8bf07f945ddfc8a011e369cc1be101",
"assets/assets/images/weapons/catalyst/twin-nephrite.webp": "5f0dca1adf8ecfe4db5c9b9c91b34431",
"assets/assets/images/weapons/catalyst/wine-and-song.webp": "1877734df057304fdd7143091e94c898",
"assets/assets/images/weapons/claymore/blackcliff-slasher.webp": "9cd613cc5d9b307c22e65bf2511477d2",
"assets/assets/images/weapons/claymore/bloodtainted-greatsword.webp": "e561b118ba9c1183f4e002d694d84e63",
"assets/assets/images/weapons/claymore/debate-club.webp": "ed07c45987ee5c84a662d607cc0a8a53",
"assets/assets/images/weapons/claymore/favonius-greatsword.webp": "ef2aa792dc57993e424bf7a3fca07253",
"assets/assets/images/weapons/claymore/ferrous-shadow.webp": "cef143f7168fea7529eb89066c4c744a",
"assets/assets/images/weapons/claymore/lithic-blade.webp": "94926b1c45d06c3b28bba4b6e932f33a",
"assets/assets/images/weapons/claymore/old-mercs-pal.webp": "5ae86f18b48c87f434b72bec954d2cf6",
"assets/assets/images/weapons/claymore/prototype-aminus.webp": "3633a6cd53e174db79f3164432497dbd",
"assets/assets/images/weapons/claymore/quartz.webp": "b898bef3ea014662c9909eb110ed704b",
"assets/assets/images/weapons/claymore/rainslasher.webp": "7f995850f91e78f47146a66f5dde4de2",
"assets/assets/images/weapons/claymore/royal-greatsword.webp": "4cf556f58fc643a3cd9cf9b99d8e12ab",
"assets/assets/images/weapons/claymore/sacrificial-greatsword.webp": "347ad357c592b542fd7ec25b8be6aead",
"assets/assets/images/weapons/claymore/serpent-spine.webp": "ff21e8556b2a32860eb0df6dd9d76cb0",
"assets/assets/images/weapons/claymore/skyrider-greatsword.webp": "d7dbdab375b52ee42be53edd95b1737c",
"assets/assets/images/weapons/claymore/skyward-pride.webp": "3d11feafced28fe9e1375a7724a9c07c",
"assets/assets/images/weapons/claymore/the-bell.webp": "b7e6e26794353965a5de9aa7d2714a3c",
"assets/assets/images/weapons/claymore/waster-greatsword.webp": "4aef92c02f054e6c1f201b85ded02d96",
"assets/assets/images/weapons/claymore/white-iron-greatsword.webp": "c182c2a5ae5f6841a8076696d85ee896",
"assets/assets/images/weapons/claymore/whiteblind.webp": "d4c2949c5ea1e2f0d39302798ec4b1d4",
"assets/assets/images/weapons/claymore/wolfs-gravestone.webp": "9ae2612df7864b5a622a1523344dd096",
"assets/assets/images/weapons/polearm/beginners-protector.webp": "d6178312d674ce4ef0c1027b73a8774b",
"assets/assets/images/weapons/polearm/black-tassel.webp": "49d2474c5b3a2a4d53942400fc656b90",
"assets/assets/images/weapons/polearm/blackcliff-pole.webp": "c252c60f6e0560886a0ff1e89912c7ea",
"assets/assets/images/weapons/polearm/crescent-pike.webp": "227a65ddba7cbd3e20d96780664836eb",
"assets/assets/images/weapons/polearm/deathmatch.webp": "b0a0ca61b88a0dc70a25f8644820bda7",
"assets/assets/images/weapons/polearm/dragons-bane.webp": "56c5e5d5171904c500dedfe28942fae8",
"assets/assets/images/weapons/polearm/favonius-lance.webp": "450486c5e80ea07edd021945db9366fb",
"assets/assets/images/weapons/polearm/halberd.webp": "9a2fb972e817aff96df778d9b65654a1",
"assets/assets/images/weapons/polearm/iron-point.webp": "7c3088d7afb7a9a1f0c47bd17f2acb4b",
"assets/assets/images/weapons/polearm/kunwus-iris-rift.webp": "458b34c139f86f3380a2221cc75e617b",
"assets/assets/images/weapons/polearm/lithic-spear.webp": "00048220d25a85980663f2691c19a0fe",
"assets/assets/images/weapons/polearm/primordial-jade-winged-spear.webp": "0af38a34f966432132e9c0d72ba80f4e",
"assets/assets/images/weapons/polearm/prototype-grudge.webp": "71171b069a6e35df7c4341a53aba3d6d",
"assets/assets/images/weapons/polearm/skyward-spine.webp": "4b481c4ea99c50fe9f906748d02f48d2",
"assets/assets/images/weapons/polearm/white-tassel.webp": "bc5debb36a764283861e9a58476bb24e",
"assets/assets/images/weapons/sword/aquila-favonia.webp": "457e30344caa776ae5a0c36aec952181",
"assets/assets/images/weapons/sword/blackcliff-longsword.webp": "0add8e26dc35dcab0746832146411a8e",
"assets/assets/images/weapons/sword/cool-steel.webp": "e6ddddf3d02ec3c991a946fc7080fd09",
"assets/assets/images/weapons/sword/dark-iron-sword.webp": "29d6280e4aed40c7af43ac980257f35d",
"assets/assets/images/weapons/sword/dull-blade.webp": "f104943bf2e0b62b543b448b84c84c26",
"assets/assets/images/weapons/sword/favonius-sword.webp": "1b9d119e439f8c081c1bc14252451f2b",
"assets/assets/images/weapons/sword/fillet-blade.webp": "e928d5b8d68327ac8e933aae6b62ce8b",
"assets/assets/images/weapons/sword/harbinger-of-dawn.webp": "4bda3d33212176a35ecbf583482acd40",
"assets/assets/images/weapons/sword/iron-sting.webp": "21e64a974ce885d07308a7941bfabb45",
"assets/assets/images/weapons/sword/lions-roar.webp": "fb542eedc1ce29489dc821f83fbb82e9",
"assets/assets/images/weapons/sword/prototype-rancour.webp": "7f7c0d08de2898e9c2c98b83f3a83658",
"assets/assets/images/weapons/sword/royal-longsword.webp": "625ba34840bd914f862043bb8f906695",
"assets/assets/images/weapons/sword/sacrificial-sword.webp": "afcf78889f7b18e6f517452bfebffe8e",
"assets/assets/images/weapons/sword/silver-sword.webp": "dedfcf8a63fb917fb4c8d95551ed15b1",
"assets/assets/images/weapons/sword/skyrider-sword.webp": "2e87cfc34746b8abc0faa9c922435f40",
"assets/assets/images/weapons/sword/skyward-blade.webp": "0e1e7101cdb6660e29c947231da582cc",
"assets/assets/images/weapons/sword/the-alley-flash.webp": "7331b98a99939e00f3b22ec435554ad0",
"assets/assets/images/weapons/sword/the-black-sword.webp": "2c3f05d1a301f1120eca6b35bc562831",
"assets/assets/images/weapons/sword/the-flute.webp": "fbe5f7c4d6ab075b37f24f63bb021279",
"assets/assets/images/weapons/sword/travelers-handy-sword.webp": "dcc2322246595a5ff85602d725a509c8",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "7e7a6cccddf6d7b20012a548461d5d81",
"assets/NOTICES": "1e0814c1d5ea97c1166f216d8ab12f03",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.css": "5a8d0222407e388155d7d1395a75d5b9",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.html": "16911fcc170c8af1c5457940bd0bf055",
"canvaskit/canvaskit.js": "c2b4e5f3d7a3d82aed024e7249a78487",
"canvaskit/canvaskit.wasm": "4b83d89d9fecbea8ca46f2f760c5a9ba",
"canvaskit/profiling/canvaskit.js": "ae2949af4efc61d28a4a80fffa1db900",
"canvaskit/profiling/canvaskit.wasm": "95e736ab31147d1b2c7b25f11d4c32cd",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "7c868849b1c948a6922a5235f21a74d8",
"/": "7c868849b1c948a6922a5235f21a74d8",
"main.dart.js": "40f4388c788c8c9d69e6b2f6fb7308d9",
"manifest.json": "d088e608a4d82e31d78f700c0628d746",
"version.json": "116c1753fb98ef0d71f5af6545f041ae"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
