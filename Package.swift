// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "OneSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "OneSDKTianti",
            targets: ["OneSDKWrapper", "CommonResources", "TiantiResources"]
        ),
        .library(
            name: "OneSDKHappymaker",
            targets: ["OneSDKWrapper", "CommonResources", "HappymakerResources"]
        ),
        .library(
            name: "OneSDKQutang",
            targets: ["OneSDKWrapper", "CommonResources", "QutangResources"]
        ),
        .library(
            name: "OneSDKHiddentianti",
            targets: ["OneSDKWrapper", "CommonResources", "HiddentiantiResources"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        // ========== Wrapper Target（统一管理系统依赖）==========
        .target(
            name: "OneSDKWrapper",
            dependencies: [
                .byName(name: "ATAuthSDK"),
                .byName(name: "Bugly"),
                .byName(name: "DouyinConnector"),
                .byName(name: "DouyinOpenSDK"),
                .byName(name: "FMDB"),
                .byName(name: "FlyVerifyCSDK"),
                .byName(name: "GravityEngineSDK"),
                .byName(name: "KuaiShouConnector"),
                .byName(name: "MOBFoundation"),
                .byName(name: "OneSDKAccount"),
                .byName(name: "OneSDKCommon"),
                .byName(name: "OneSDKGravityEngine"),
                .byName(name: "OneSDKIAPHelperFramework"),
                .byName(name: "OnesdkBaitianFramework"),
                .byName(name: "OtherPartySDKFramework"),
                .byName(name: "QQConnector"),
                .byName(name: "ShareSDK"),
                .byName(name: "ShareSDKConfigFile"),
                .byName(name: "ShareSDKConnector"),
                .byName(name: "ShareSDKExtension"),
                .byName(name: "ShareSDKUI"),
                .byName(name: "SinaWeiboConnector"),
                .byName(name: "THEMISLite"),
                .byName(name: "TapTapBasicToolsSDK"),
                .byName(name: "TapTapCoreSDK"),
                .byName(name: "TapTapGidSDK"),
                .byName(name: "TapTapLoginSDK"),
                .byName(name: "TapTapNetworkSDK"),
                .byName(name: "TapTapSDKBridgeCore"),
                .byName(name: "TapTapShareSDK"),
                .byName(name: "TencentOpenAPI"),
                .byName(name: "WechatConnector"),
                .byName(name: "XHSConnector"),
                .byName(name: "XiaoHongShuOpenSDK"),
                .byName(name: "YTXMonitor"),
                .byName(name: "YTXOperators"),
                .byName(name: "tapsdkcorecpp"),
            ],
            path: "OneSDKWrapper",
            linkerSettings: [
                // iOS 系统框架
                .linkedFramework("UIKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("OpenGLES"),
                .linkedFramework("OpenAL"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("Foundation"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreLocation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CFNetwork"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreText"),
                .linkedFramework("MediaToolbox"),
                .linkedFramework("AdSupport"),
                .linkedFramework("JavaScriptCore"),
                .linkedFramework("ImageIO"),
                .linkedFramework("Security"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("Photos"),
                .linkedFramework("Network"),
                .linkedFramework("AdServices"),
                
                // 系统库
                .linkedLibrary("sqlite3"),
                .linkedLibrary("c++"),
                .linkedLibrary("icucore"),
                .linkedLibrary("resolv"),
                .linkedLibrary("z"),
            ]
        ),
        
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "ATAuthSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/ATAuthSDK.xcframework.zip",
            checksum: "b3fbc05c93b6fa71e02ae5a60406b87391f28b151963e1377e431a039045a1b0"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/Bugly.xcframework.zip",
            checksum: "5539bbdb271d3ffacded84ef57db7ec02b275bf5078f35ff74e68f22297f040d"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/DouyinConnector.xcframework.zip",
            checksum: "0996a51f5850aba85a866ae161eb0cd1b1937efcc21c1226b7a42ec8c66d4500"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/DouyinOpenSDK.xcframework.zip",
            checksum: "064643d04f504bb51b7c0b4391e7c638b5fe8f7877c1dae14de6f4e71f0c0a47"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/FMDB.xcframework.zip",
            checksum: "33678afe9a27cb8d5a75d004c04de2d2f969cdc0a25e9212f29453c8e9e6e140"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/FlyVerifyCSDK.xcframework.zip",
            checksum: "a52a3b89693fe088f40d12fe295a6c88e9eb31f2d3ca15308e7a1f1e95ae52da"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/GravityEngineSDK.xcframework.zip",
            checksum: "b69f660b6526cffac9289bf2a22d54965b7a6e367b21664fa30794900e738087"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/KuaiShouConnector.xcframework.zip",
            checksum: "cb869e008ce6fcfcd4c02ad0ae8a3e67938a81e4862ebb223964a9af1f80893c"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/MOBFoundation.xcframework.zip",
            checksum: "de0297ce45c0ef063ed641892bc6d672096203ae9a06112a92373da9091869b2"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/OneSDKAccount.xcframework.zip",
            checksum: "eb5eb339ff59f2714846ad85675dc3eb35e8ce4b1e39a67cacfa1a1fdd1bb0ea"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/OneSDKCommon.xcframework.zip",
            checksum: "706284c47d523ad734ebbfb6f4aee70435e34fd9340a82d7935ea3f5dc6a5d49"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/OneSDKGravityEngine.xcframework.zip",
            checksum: "54e896eed3c244b784fa546e6ea59adb5d985e0306d53bb0e66d0f27291cb8d8"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "48f36b6031e1e5ed825f572efcd05a83be7bcdcdf1e8f60394903c58f8dd624d"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/OnesdkBaitianFramework.xcframework.zip",
            checksum: "1f4ff97bbfba4ab8b0c2a98626847244db56615b5920e569375587577e2fdd48"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/OtherPartySDKFramework.xcframework.zip",
            checksum: "ddda2c9b1d7c744336da7d006fc29b63d4ae0d542e719152583500f242835e46"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/QQConnector.xcframework.zip",
            checksum: "2422b37b6f7b6ba9d62503173fb85eec80638ca21eb3b4371869174a954960c7"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/ShareSDK.xcframework.zip",
            checksum: "f08b3853388e3763ebd8f492d2464c9e509589210834e27bc2854219e28e4010"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/ShareSDKConfigFile.xcframework.zip",
            checksum: "58a46de2afe5d17a32816455cdee07611841c83610c4a6ee6e72f69782bda7e1"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/ShareSDKConnector.xcframework.zip",
            checksum: "72b8f03c63a64756f9c93b23300e5607576dc7c6723d70a24ed27804bd439cae"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/ShareSDKExtension.xcframework.zip",
            checksum: "e92324df129e4fa7d6d60ff66a59d0b2973310831a8e0e4aff6f5a90cfc5a89e"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/ShareSDKUI.xcframework.zip",
            checksum: "9cbee2aba2310ba6849e4a91255406406258cd27266b46c324066ad49a07b858"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/SinaWeiboConnector.xcframework.zip",
            checksum: "d242fcb5809bd1c380b962bfa7afdbd8e9fdf110a5c51cae0e25fa4097a28207"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/THEMISLite.xcframework.zip",
            checksum: "5c33241523f3305e37d3fc66d704173dc4c7dd60dc326c288e2573ee7d06e39d"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "1e31dc08e5a5e87607caba952918edeaf4bd14a32b12bf848fcedd0e69fc5946"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/TapTapCoreSDK.xcframework.zip",
            checksum: "94df9d02852fc50fd0eebb14166439da3b0db5435fa1e5ed354923cc704234a3"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/TapTapGidSDK.xcframework.zip",
            checksum: "da885e5b6ab620b31437b55c66ced986aa90637d83ecfe48b245238b8cbf3f62"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/TapTapLoginSDK.xcframework.zip",
            checksum: "719c80c052875b27c6b986b2097a5d88d855ae3162347bf74b99a827e5ff8f25"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/TapTapNetworkSDK.xcframework.zip",
            checksum: "b598a19a4c2761a8c57dc298068da74569461fb78dab8a04ae34380d72864637"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "9a68515baff591813bb11b034dd32e47b70bfe8370c68659a5f636e24374bb98"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/TapTapShareSDK.xcframework.zip",
            checksum: "4cfdc3fd83a428f6ddf74281ee938a3ca1a4f829f8e113cc2690d99b5cb4bc77"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/TencentOpenAPI.xcframework.zip",
            checksum: "b0a9604d3569142836f5b8cbf5a9122a365052432b86fe08826b2790f701b5e6"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/WechatConnector.xcframework.zip",
            checksum: "221bae7dbfabb525ef5149399100af724bcad80b7f894218280a12774195596a"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/XHSConnector.xcframework.zip",
            checksum: "ee3c4a76d187c73f79e1cb0a1b3399ce4f7f4922163c3d25e304033f2665dc22"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "cb21d6571cde1eafa305a7c73ff72c77c5767212c78fec6db6255409ae5916e6"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/YTXMonitor.xcframework.zip",
            checksum: "902c1ea2998a4b150ba68299e4b28821f5f924f470e0da829e6293d746f30d6d"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/YTXOperators.xcframework.zip",
            checksum: "5495a10f94dba5d9a4c4980927288573889e65eff03153f7fffdb73fc23fb7d5"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1402325/tapsdkcorecpp.xcframework.zip",
            checksum: "1d54aca368363a00bff0054c56ea63081d2943d98427422f08c9db5d9a8acf86"
        ),
        
        // ========== Bundle Resources ==========
        .target(
            name: "CommonResources",
            dependencies: [],
            path: "CommonResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        ),
        .target(
            name: "TiantiResources",
            dependencies: [],
            path: "TiantiResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        ),
        .target(
            name: "HappymakerResources",
            dependencies: [],
            path: "HappymakerResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        ),
        .target(
            name: "QutangResources",
            dependencies: [],
            path: "QutangResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        ),
        .target(
            name: "PjmResources",
            dependencies: [],
            path: "PjmResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        ),
        .target(
            name: "HiddentiantiResources",
            dependencies: [],
            path: "HiddentiantiResources",
            exclude: ["Resources"],
            sources: ["Placeholder.swift"],
            resources: [.copy("Resources")],
            publicHeadersPath: nil
        )
    ]
)
