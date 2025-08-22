'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"index.html": "6a50c63499e1051e50e643e1607c87dc",
"/": "6a50c63499e1051e50e643e1607c87dc",
"flutter_bootstrap.js": "7e9992fffdd0cb97580468121851626d",
".git/refs/heads/gh-pages": "1ec9da5984d835681bd2eb73a71197e0",
".git/refs/remotes/origin/gh-pages": "1ec9da5984d835681bd2eb73a71197e0",
".git/config": "7cbfbbed00580df7af7f97d1fe90c702",
".git/objects/e6/a2ab4326639af63af6e22ed3a6b1a570886c6c": "b3d45db7482ecebd73b1e97f0ffc3f04",
".git/objects/f3/f88234fc2163a6ec5c3d57bad3a2e74fec7818": "bc12eddfe53f0374c0bd2009f9ecba03",
".git/objects/02/cc4a665ba840fa1afd1713796dfceaf49405d0": "11aaac4a868631954f1a3d13ba33acb8",
".git/objects/b9/6a5236065a6c0fb7193cb2bb2f538b2d7b4788": "4227e5e94459652d40710ef438055fe5",
".git/objects/b9/7a63a861e5bc94a2819bc0d112c3a27cd7dbb9": "9f12f2680b39757d7375a0a2f83888e5",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/cf/dd9f9d2e8cabef7b5b84fa40f8924b367bd063": "73220fc646537c7d793df157778f4365",
".git/objects/e0/7ac7b837115a3d31ed52874a73bd277791e6bf": "74ebcb23eb10724ed101c9ff99cfa39f",
".git/objects/e0/436c6e76c2f5526efd9a0677bba782f69e64c8": "74d1db8735b45784b6aa0f46d40c5633",
".git/objects/4f/87bbd911a60427435a61f04b279ae3dfe2848d": "bfec3b0d528056e72c6bb8b6c6010818",
".git/objects/af/ca2d9fe319096481940b396b5bb22ea44d27f9": "6ec18ad8452eab39d6b3d70bf61c6f28",
".git/objects/ce/1564231196d2f99c716631745c70c458f9379c": "587a26fb4896996357fc60f9b3f3db95",
".git/objects/18/c2c08ffb115f6a670da12d3185765422f103b6": "746a98e4abae7056c0e3dd322869264c",
".git/objects/76/95d40a9ba7f6ecafb52320139ccf7c54eeb3e0": "16b8b60c6bbdb22eede670443ad7b68b",
".git/objects/59/e1a54073b749795bf44b338562d2493505c07d": "475b2586c801f7ea0583431442a64800",
".git/objects/61/afd30bdfa690c8dd23dd1b0d6af632c3bd6559": "d791a7a2eefb973f7b42cb3cd680543f",
".git/objects/2a/7229c0823aaebecc9fb9a99d9f27036c780998": "108b26ae76dbeda092fa8a3a4014709c",
".git/objects/10/7e5a7637f625fc9ae66175cc8d31d2550d6010": "c4f8f13410461372c127898029e25730",
".git/objects/33/caa9f900a6e522af814d4b036d52f57fd5d9b6": "9033a77f6bc8294cd0e37cccf20ef58f",
".git/objects/32/04315c26486db0dcc7d9464a2c74ded7b9135d": "e0d31521e631fe5b204108804e9ec75d",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/0e/376cf9a5fdafa3b72c9ba134240df7aa7dadb5": "9d2b2146f9963e717e82d4ffb543ede6",
".git/objects/42/70ccd7b458ee15caa53655153f2a7a66e5e64f": "358890d53248b3a33ca42697ad15e184",
".git/objects/03/29a721e09122a31efbf9cf74919a1d26c666bf": "b3c1db2883400e3c1b50e4417a89dbc8",
".git/objects/fe/c354a7e02c361ea707c7aad55eb96d50cd9376": "eb4bb543ddf3a7ae1b0401e260c83949",
".git/objects/fe/3914bcf3baf9d87a873a444cac8aaf9dcd54c1": "372add7dd6cdabc32b9333e8d66bff72",
".git/objects/fe/0378ac7166aeaad6b3de38d7ba96045ef7def0": "e0a8ef6886149db38c066c2a621224ca",
".git/objects/2c/d817d56577cc2dccd9bbf8da8e4511af03af5d": "41f1b8fe20544dcd77de9d249f3fe9e1",
".git/objects/dc/ce5c6efa0c0529278656d8e2d874b39f6abe38": "5512cf09533a0181cfa479161978b34f",
".git/objects/dc/11fdb45a686de35a7f8c24f3ac5f134761b8a9": "761c08dfe3c67fe7f31a98f6e2be3c9c",
".git/objects/05/d952ac566415ade1565a3b324d8ada4dc51d9f": "22e85946d9df19bc3f035dbb8321fda2",
".git/objects/05/84f183d6bf64d266936f123e7f8c5409efc6ee": "397d176df5caeefeb459723218af3663",
".git/objects/1c/3badc1517258de6a2536392bbf716c20f6b869": "91dd5962121ba534862c83d64ddc3811",
".git/objects/1c/b801e28b2b2597f8d3bfb097df9ed859cc2804": "40b0ab7e18c6d3c6f71b00a16163b2ef",
".git/objects/c5/1526b7b39a81a349c621076a2020ea9c2cd44b": "5b220287abab8cca1744f545e6467d18",
".git/objects/c5/39c08e04a7b2e45c0a210e0b2fa69ccdc4721e": "558d5c92ec07b1e34655780f94e81cd2",
".git/objects/0b/5670420f77629e563d076e07fab1f1564a7271": "7c35782f79f536256344782e631a5112",
".git/objects/f9/0a84ed299ccc30bff3fa85c9c4d58c16602505": "e989203c31e7b3ba11933506e9e3c4f9",
".git/objects/b0/ccd166f7e17c9a28ccfc6478f541c38594288a": "60ddf2de7cffbb3a31a227cc5d655d86",
".git/objects/4c/51fb2d35630595c50f37c2bf5e1ceaf14c1a1e": "a20985c22880b353a0e347c2c6382997",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/95/f79bd460bfc05dc7d89b1c8bab0b679cd9356b": "c68ffa9a070e8ee0b1d10ade441e66a2",
".git/objects/7c/03365dc70632ce903a0daa7d9d48a66ba3410a": "392dfdfec76274883144868975f44ac5",
".git/objects/9f/68aac15b4ae3dc94c33b72ea0c4d0290115f7b": "b719ca454f319d0d7a68b1fe8304a58d",
".git/objects/1a/d7683b343914430a62157ebf451b9b2aa95cac": "94fdc36a022769ae6a8c6c98e87b3452",
".git/objects/25/21d6f9c98d5da0fa307603fddd5f334f69c6e3": "49fa2c23adb05ffbfbdeb190153d9593",
".git/objects/36/30be017b0d03fa1a0d5dd5be4a1282b1708437": "8cfc1919dd8569f44ae3b7a854e63bb4",
".git/objects/83/280a4151e30af49623df6b6a404c67720b1ef8": "320d7a486d64040b2fbebc8712e1fca9",
".git/objects/62/22170b4e04a1bf00b74b1f432405c01e175112": "292716aa7d9ddfca4ab2b6e701721e12",
".git/objects/90/3f2550051c8261463feab761d087d2e5451bde": "642c0a81e11713dea593f23688616c8f",
".git/objects/90/46dba5220486bfd66d772c0f0594f9355ca608": "3b22bfb8c20a3974a661d6e30f58b141",
".git/objects/90/125e359b356ae43efd4e35649e840e2d0cf00a": "97e628eeb6bdc67f6cbc18fc8bf23a09",
".git/objects/90/ca437d47db62aa0d80b3fa5d1272d59f583eda": "e0d2ecc192c2327b2c5f6e4f11a310cc",
".git/objects/cd/0b10d9ddec7483e753684edbecd34ba8e28822": "04fd2e789a29d80630540f42b8110084",
".git/objects/88/48225f056b9a7eb68c3acd193f85dd36bdc59d": "b8f30cf44cc15cdd826930a4aa47f03f",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/f1/cc059e380a514888ed9a513a70a5efbac6d4f5": "de2ee7d3cf9174fe4bbdd3cb8811f96c",
".git/objects/54/cc569ee95749b5e6e938eb249003f1a1f9f522": "6e0d46fe72b15d4f4b054046c8a490b0",
".git/objects/51/4913741686fe7dd7cafaed0b20ddac59bcee16": "cc87542c04837c25222f3aea1a30cc62",
".git/objects/92/516c14904631ce5c32a105c134dee5c56acca3": "28dee2171697542c4593d31833173322",
".git/objects/c0/3548a1e9b6cadd8971068c60f8b2b2fb870a47": "a8963f5589d3eb4f34c4afce2a876bd7",
".git/objects/01/4c86120aa4aaac0d0bc75dc6edbe16c6e4b163": "c566b02c13e8b32429f849302b84fdfd",
".git/objects/01/5500347cb0a295ba538748fcd0196ba4c4964d": "c30d9f5e23589b23169d9495e9824754",
".git/objects/01/06805ff5eddc4da561019fe8124c3831c69164": "7aeba1496c3024bb07e08c5bee0e83ac",
".git/objects/01/74c4639e4013ff0f522104c90c035911021f2f": "070c973b7f60b655be78f04df71bd63e",
".git/objects/20/5c52a1052c276ae6757279d9de3a51f929e731": "b974031797b73185546d496e566a6e54",
".git/objects/e5/df75fe8c15837bece0fd4d56e84a64c5f095ca": "5d85d12d44a83d328c3df8e1542c56b7",
".git/objects/5e/a68057dffd742baaffe38c8b0086348defef1f": "5f04782db9cf52acadf1ce616dcd5452",
".git/objects/53/18a6956a86af56edbf5d2c8fdd654bcc943e88": "a686c83ba0910f09872b90fd86a98a8f",
".git/objects/53/3d2508cc1abb665366c7c8368963561d8c24e0": "4592c949830452e9c2bb87f305940304",
".git/objects/23/970754a03679b8eccde88ad969f08de08a87e4": "c457348f8d5a10e94f8324b53b2775ca",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8a/51a9b155d31c44b148d7e287fc2872e0cafd42": "9f785032380d7569e69b3d17172f64e8",
".git/objects/8a/2db16b218906aca724d9eec2e1a1e3ba0c88ac": "7f5996c3a07a142a775618d5b0e25162",
".git/objects/45/1b30e5cb510f00523b0c6725269125b29f40fd": "429a8f43032e471b477e8062735040d5",
".git/objects/47/d6caac893cc57eab2d6945ae05f5afef2d1221": "0c2b93c14bcfaf41ae54ce9d6221da5d",
".git/objects/47/6c8b6e715795b7f2a4280b591495145baa225c": "d40b98a4deeb1b0634c25373d1281aea",
".git/objects/cb/80f538fcae2297c0ddecccbc05481ab9b74058": "0b1a2c794fd6c5d9fd1e529c7e3f15d6",
".git/objects/ec/a0ffadb6a8c38f6718b2c52d1ffb880daea078": "f5a4f9fcb9dc5fe99ce520a3486e447b",
".git/objects/04/5289c4d91e298358edeb66eb5c747550051d8b": "c7bc873dc6d465f445c6462f15c2c0f3",
".git/objects/0f/ccb1f4e064107002c9dd2d24eeb33978f3db9a": "b29b7f42581808f5eab876b9e89f22bd",
".git/objects/5f/bf1f5ee49ba64ffa8e24e19c0231e22add1631": "f19d414bb2afb15ab9eb762fd11311d6",
".git/objects/77/3fa774a321dc74a71351731ed1c2da2e315559": "03aba9da9876b7536956c291b10bf0da",
".git/objects/40/1184f2840fcfb39ffde5f2f82fe5957c37d6fa": "1ea653b99fd29cd15fcc068857a1dbb2",
".git/objects/14/b124d0922cd05e55d30c6c68dc592240b0a3fd": "63e4e383b15dfb6af649d756cdf7e75c",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/c8/08fb85f7e1f0bf2055866aed144791a1409207": "92cdd8b3553e66b1f3185e40eb77684e",
".git/objects/c8/2c2cb2e9a069bb38758194ecc461443878fe07": "fac21279daaed95e8c9ffe4661e725e2",
".git/objects/c8/1ca4aeba31207aa010d0ab50cc4cd9f9b597d6": "e9605638266084eae0c493756321d1b0",
".git/objects/93/2d339b6b993f410eda69f69bd6675eb14bee8c": "7a7bf7ad06204c8b2c2f59426b802556",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/44/ca4db249d1aad84acab41456d0a43a24e2c2d7": "2553cd48dc47fbe2a08946491a3b86f0",
".git/objects/44/fdcccd679585d81387676587d1602835a38463": "43415ae9954fc09cc85e50b7baed5a0f",
".git/objects/bf/0b996757c810e9c4f1bfad30562133f982261e": "2dd714c95c80942b4cb32148169b42bb",
".git/objects/72/533006d0e35a97ad580c89f6b1600bdf3baf51": "4738963e096f867ff1e62d8d8b0709b3",
".git/objects/eb/964a6fd5c23f6db56f351b49cdbedd8cc952a3": "c6f530d2d336094e6e9b2104d99b9653",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/87/bd73d6f0da8103efda5d412af0589d467f05ad": "39dc32de45f8878904afa7eee8a8d90b",
".git/objects/f0/ee94e46b6877ef09854c6fe11931c04e73ffd4": "60e547813f5a5048002254b61ff2624e",
".git/objects/d8/856fbd84367894eb921c7ab3462299ebc009b1": "a9a4137459c0073f94e19a82a25e6190",
".git/objects/73/c63bcf89a317ff882ba74ecb132b01c374a66f": "6ae390f0843274091d1e2838d9399c51",
".git/objects/7b/d0a850fa8b48266142db13ab775829efe243d5": "2ba38fdf93117c02234c7fb1929507a7",
".git/objects/7b/dd0189eb8de9a60d19a37719678499bef3244f": "dda66a07009cb878beaedd3581bacbd2",
".git/objects/9b/d3accc7e6a1485f4b1ddfbeeaae04e67e121d8": "784f8e1966649133f308f05f2d98214f",
".git/objects/55/d3f8d1a55b12bf6b75a768391e623d124893a7": "338ed29220576d8dc2c792b880e011aa",
".git/objects/55/d640ba669d59deada2e4e12f7f6cbc0de94dc8": "5159a9e79c53e861b07a80173ad284c4",
".git/objects/a3/d0ceea24d0c90d38dd8198e4ec934750bcf4cd": "4aab7897de220e3b6b930b873b4f0419",
".git/objects/bd/8f6d8220b368967c25d44af6e5c67f3dfdf567": "42f45ce0e9916a9304f66680665e3893",
".git/objects/70/8708263f026fdc46e578e8d6fa4fe92a26d103": "ad88ba73e21417d69853925dacd9f6b9",
".git/objects/70/a234a3df0f8c93b4c4742536b997bf04980585": "d95736cd43d2676a49e58b0ee61c1fb9",
".git/objects/0a/29b842ee4b9cfed176af96c693411c7a8627f3": "ba14f70102e59c379eb957bcfdcdc5b3",
".git/objects/0a/2305548baa5a069ade7a4fea57ae3d1d5ca51d": "304579acca57ea5e4016e154fe400a4b",
".git/objects/58/685f0f9b160027069aeba78d0f08db6287c543": "26f7c80b850d5545ba68df7ca0c6e8b6",
".git/objects/a2/641a095a9ee19571aef41cbc028750a5365535": "589115c9e41a973e79348350bcf9114b",
".git/objects/15/2b8321b6ec1dc5a139e5fadf375e4a3b61c252": "7fb0a2e5b17358526548765d8ad3be4b",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/HEAD": "5ab7a4355e4c959b0c5c008f202f51ec",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/logs/refs/heads/gh-pages": "27e7ef8f417a040fdcf1f4fd22d639bc",
".git/logs/refs/remotes/origin/gh-pages": "97ea806a07c25e42431d86222007cc1a",
".git/logs/HEAD": "27e7ef8f417a040fdcf1f4fd22d639bc",
".git/COMMIT_EDITMSG": "fd1342c0d28ae6d415a7e101d4ce582b",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/index": "0050fbffd853fd0d768548edc03d2692",
"manifest.json": "d40c47d1c161f94dbcb13094d37f1f55",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"version.json": "0325640b78b9f97959290dc5ebb8b3ed",
"main.dart.js": "715403f69268687f142f191394f0ca5c",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"assets/NOTICES": "cf4001f06ea7e40808fd9781bb2c4f39",
"assets/FontManifest.json": "5d59ed8d24d2996013f48d3b8bf55b5f",
"assets/AssetManifest.bin.json": "cec8939f3111f7621475058d06ccdc93",
"assets/AssetManifest.bin": "db1b24e94fd837e57b881bffbc690f6b",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/packages/flutter_feather_icons/fonts/feather.ttf": "40469726c5ed792185741388e68dd9e8",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "4662dd717f39a26b45a89a48027a99eb",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "bf21cd8fd775a3c59fd53afdee39e0e6",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "560dee1021508b49f3c3d66abe6bdd24",
"assets/assets/shapes/outlined/ghost.svg": "e9b222d90b71ef9a5794b8abd40907bb",
"assets/assets/shapes/outlined/sqare.svg": "b7887b1621a6cc19051113489e57f964",
"assets/assets/shapes/outlined/circle.svg": "2e3398f9c15a904e07323d7ac88ae63c",
"assets/assets/shapes/outlined/wifi.svg": "67145ee098d5aa51eeb062685400daea",
"assets/assets/shapes/outlined/triangle.svg": "640d97654d03f25af39dcfd11da08db7",
"assets/assets/shapes/outlined/cookie%25206.svg": "20dae155c4098cae07be4c370d2488bd",
"assets/assets/shapes/outlined/cookie%25204.svg": "a86f92f1208dd2427e56d7540bfa36aa",
"assets/assets/shapes/outlined/diamond.svg": "d6b5b56b315fd1d06d8b0ac2d586a674",
"assets/assets/shapes/outlined/cookie%25208.svg": "f825383e8b9c51d8066f7ddc034e006b",
"assets/assets/shapes/outlined/heart.svg": "4fc673c2d9a4d8c7ac2fbf82b5d5d9ba",
"assets/assets/shapes/outlined/bun.svg": "7430c9cd815b608bc2211290d3c57b06",
"assets/assets/shapes/outlined/cookie%252012.svg": "b96aec0656cd1ea98a0a6107aedb7e92",
"assets/assets/shapes/icons/androidbureau.png": "8606724a0cf6b62f37f9e6e5c0518a3d",
"assets/assets/shapes/icons/arcnotes.png": "6c198f2e002fe3b92f3bd7d685502936",
"assets/assets/shapes/icons/donor.png": "6443c9ed40f643e3562d85909f74bfa0",
"assets/assets/shapes/filled/ghost.svg": "c5b8d6d2a104959180cf8093ad96c3df",
"assets/assets/shapes/filled/sqare.svg": "a4db0e9b0e92ea0c9eb26e00b8ff70ac",
"assets/assets/shapes/filled/circle.svg": "6ecfdff843332d51e43939ef9037fb12",
"assets/assets/shapes/filled/wifi.svg": "f39622786e66e7324f2751cfaecf8419",
"assets/assets/shapes/filled/triangle.svg": "e04c9bcb0905dafb899d934e2bc5eb9d",
"assets/assets/shapes/filled/cookie%25206.svg": "8b8184c0e8c374ed1898037de807a4b5",
"assets/assets/shapes/filled/cookie%25204.svg": "511dc80220d44e90b68e0dbf54ce7acb",
"assets/assets/shapes/filled/diamond.svg": "f074491e1fcde556f550059a1839def3",
"assets/assets/shapes/filled/cookie%25208.svg": "2293abbf489f2f0d40a2788dad8f805d",
"assets/assets/shapes/filled/heart.svg": "c1ad1c4b38aac85b6708e85bca0e5817",
"assets/assets/shapes/filled/bun.svg": "21d570d95d6662cfaf34ee1c74731c20",
"assets/assets/shapes/filled/cookie%252012.svg": "859780c59dbfa5175772872905be8f87",
"assets/assets/fonts/PlaywriteHU-Regular.ttf": "25d450f276eef95062c4763610aec52f",
"assets/assets/fonts/RobotoSlab-Medium.ttf": "e4281dfb590cdd272a0035c8608ad63a",
"assets/assets/fonts/Quicksand-Regular.ttf": "5845af22f839a90a9cca3b8ec0e3cff4",
"assets/assets/fonts/GoogleSansCode-Regular.ttf": "f697971643aa851550a29738f0ee9d02",
"assets/assets/fonts/Limelight-Regular.ttf": "05e2219509d86cc93d6d13001d234c86",
"assets/assets/fonts/GoogleSansCode-Medium.ttf": "2ba04ae14884cbd92e785ef9d06a7298",
"assets/assets/fonts/GoogleSansCode-Bold.ttf": "3770a8b337a749c488f100db271b0095",
"assets/assets/fonts/RobotoSlab-Regular.ttf": "20f08697e683970e758c23e8bc5a8d2f",
"assets/assets/fonts/Quicksand-Bold.ttf": "8003228962d5cafb549cf4034f9ece07",
"assets/assets/fonts/Quicksand-Medium.ttf": "95906e2457ee777801b3ca4b02b4947c",
"assets/assets/fonts/RobotoSlab-Bold.ttf": "6e7a9327f6ac9fda67078f5b85557fea",
"assets/AssetManifest.json": "0d033e8de90f2ea1b98db3c51e9e9697",
"assets/fonts/MaterialIcons-Regular.otf": "26b086484c0655ef7b0eec4ba5672828"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
