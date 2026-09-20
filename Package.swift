// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "OneSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "OneSDKTianti",
            targets: ["OneSDKWrapper", "OneSDKCommonResources", "TiantiResources"]
        ),
        .library(
            name: "OneSDKHappymaker",
            targets: ["OneSDKWrapper", "OneSDKCommonResources", "HappymakerResources"]
        ),
        .library(
            name: "OneSDKQutang",
            targets: ["OneSDKWrapper", "OneSDKCommonResources", "QutangResources"]
        ),
        .library(
            name: "OneSDKHiddentianti",
            targets: ["OneSDKWrapper", "OneSDKCommonResources", "HiddentiantiResources"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/onesdkspm/UnityBridge.git", from: "2.0.0"),
        .package(url: "https://github.com/onesdkspm/BTWebViewKit.git", from: "2.0.1"),
        .package(url: "https://github.com/onesdkspm/BTLoganManager.git", from: "2.0.1"),
    ],
    targets: [
        // ========== Wrapper Target（统一管理系统依赖）==========
        .target(
            name: "OneSDKWrapper",
            dependencies: [
                .byName(name: "ATAuthSDK"),
                .byName(name: "DouyinConnector"),
                .byName(name: "DouyinOpenSDK"),
                .byName(name: "FlyVerifyCSDK"),
                .byName(name: "FMDB"),
                .byName(name: "GravityEngineSDK"),
                .byName(name: "KuaiShouConnector"),
                .byName(name: "MOBFoundation"),
                .byName(name: "OneSDKAccount"),
                .byName(name: "OnesdkBaitianFramework"),
                .byName(name: "OneSDKCommon"),
                .byName(name: "OneSDKGravityEngine"),
                .byName(name: "OneSDKIAPHelperFramework"),
                .byName(name: "OtherPartySDKFramework"),
                .byName(name: "QQConnector"),
                .byName(name: "ShareSDK"),
                .byName(name: "ShareSDKConfigFile"),
                .byName(name: "ShareSDKConnector"),
                .byName(name: "ShareSDKExtension"),
                .byName(name: "ShareSDKUI"),
                .byName(name: "SinaWeiboConnector"),
                .byName(name: "tapsdkcorecpp"),
                .byName(name: "TapTapBasicToolsSDK"),
                .byName(name: "TapTapCoreSDK"),
                .byName(name: "TapTapGidSDK"),
                .byName(name: "TapTapLoginSDK"),
                .byName(name: "TapTapNetworkSDK"),
                .byName(name: "TapTapSDKBridgeCore"),
                .byName(name: "TapTapShareSDK"),
                .byName(name: "TencentOpenAPI"),
                .byName(name: "THEMISLite"),
                .byName(name: "UnitySDKManager"),
                .byName(name: "WechatConnector"),
                .byName(name: "WechatOpenSDK"),
                .byName(name: "XHSConnector"),
                .byName(name: "XiaoHongShuOpenSDK"),
                .byName(name: "YTXMonitor"),
                .byName(name: "YTXOperators"),
                .product(name: "UnityBridge", package: "UnityBridge"),
                .product(name: "BTWebViewKit", package: "BTWebViewKit"),
                .product(name: "BTLoganManager", package: "BTLoganManager"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/ATAuthSDK.xcframework.zip",
            checksum: "7cdbef274531a21e8ec9e16cfaf7c635fcde210701472fc0b533d54989778aac"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/DouyinConnector.xcframework.zip",
            checksum: "86c47fdcaeaeb69111a99086a39ee8ab0e45ec743b60eb74dd017e97e6a41efc"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/DouyinOpenSDK.xcframework.zip",
            checksum: "7d7765452a898388098d54b47ad543e4171defe167db92696b7b22ec48d4bfb8"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/FlyVerifyCSDK.xcframework.zip",
            checksum: "d0ec7e566f98db5143e10e02d52f345d64588a8a1f82813d9131155d778a2d8e"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/FMDB.xcframework.zip",
            checksum: "25d572e9425614d5134db93f79b5a30fcdf99203df495b3f78bd9df3da4e0e48"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/GravityEngineSDK.xcframework.zip",
            checksum: "e279b802f2fce2da4cec62803c9eb944696416827860553dfb3a2daee8b54534"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/KuaiShouConnector.xcframework.zip",
            checksum: "8d22e9f8a120adb8f98d99c6be954ac864809408fa476873bfdc3f6b28826f4c"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/MOBFoundation.xcframework.zip",
            checksum: "39bad60ec0889b06e649ed90cf5579f68ea5c96d0bb825a41ac322a7c53d2930"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/OneSDKAccount.xcframework.zip",
            checksum: "3c1f7027c9cb9d7b6f11620e14910e6dad7fafced1dad08534234c7d2dc266e2"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/OnesdkBaitianFramework.xcframework.zip",
            checksum: "527a710f22ff34c3fb9ad09c1177ed0cbddacf831eb3a1f6bbd70e387aa6ee08"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/OneSDKCommon.xcframework.zip",
            checksum: "1ff35679e85816f9d15094871651668a2779cf114345e9b70032eb02544e5160"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/OneSDKGravityEngine.xcframework.zip",
            checksum: "2d291079270543461e8b2f2b957930560ab5a3feb58dec43fc5591e128c608a1"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "9289d763b624d6ab6a4155627ad2a6f97282c64cad9fb821aa66d3bf57f49c86"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/OtherPartySDKFramework.xcframework.zip",
            checksum: "82d381a60ba2fc158c4c208523333e6b790e9f54c3b339bdc691952cc19a5585"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/QQConnector.xcframework.zip",
            checksum: "495b81e73043da89529385dfecacb10c18a6cb332b0b470933de0415f72739b4"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/ShareSDK.xcframework.zip",
            checksum: "8c998bba53dbe163894bb472d96836ac9d4f64f3b9131b556618751ec9fdf70d"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/ShareSDKConfigFile.xcframework.zip",
            checksum: "a7c138ccad35ac40d6b76e1629d2a7df1a59d2b5bdc0df75bb94046d0ccf9bcb"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/ShareSDKConnector.xcframework.zip",
            checksum: "63cc63f418d0efefffd7f2ca85ec226c3a30ab1af95310a928e893c42e5bef03"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/ShareSDKExtension.xcframework.zip",
            checksum: "83152c2961d4ae3c40f07f59025462177b9d0dd02ad3126a776af99070472ff0"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/ShareSDKUI.xcframework.zip",
            checksum: "7919620868703821f23ad819fd98b2eea8ae356ed147cb5ca021f489c5815d53"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/SinaWeiboConnector.xcframework.zip",
            checksum: "16f967ee7d5ba4e786c9f83f3b521dcc3fa921d1908cc19fd16559128055be7e"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/tapsdkcorecpp.xcframework.zip",
            checksum: "b138ca980b12add345588bfe2f8f5e78aef904cbf9df7dc208571757ac095348"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "15fecd561f4f78781d6472d41439a8f92290a6e27eaac4058698a10320f96da0"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/TapTapCoreSDK.xcframework.zip",
            checksum: "4e16a6760d98e0923241c52ced426ecd5e2bf29cd002a352e7200875910fcb8f"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/TapTapGidSDK.xcframework.zip",
            checksum: "76d29e9df3eb4652dcf78d59215096187c523ec43dd0759ada89c8e36610160a"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/TapTapLoginSDK.xcframework.zip",
            checksum: "f1e27ecd812f2b9515b63c6e681d9dad943b3fe1801c98475d96f7388634430f"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/TapTapNetworkSDK.xcframework.zip",
            checksum: "e9433548c7e82725f3ce078da85563b8ef0dcdf7424a6a57b7efd0c79b34dd31"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "030c4e4b275db2d7ed471e5739ae71cdb440371349db65b00a0b29426aefe187"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/TapTapShareSDK.xcframework.zip",
            checksum: "674f40983a6e094be52baa64ccdd748cab1b1bcd65e7521ba548639e0f6b08f4"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/TencentOpenAPI.xcframework.zip",
            checksum: "4280a3f74214bc8b6d4ebb56c934daeb7d6f5aae912d79198b6983b09f0de34d"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/THEMISLite.xcframework.zip",
            checksum: "8520fa04c972faff8930b9b9b9f5e3983f803565e177999f1f0cf7e92e32f552"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/UnitySDKManager.xcframework.zip",
            checksum: "90975dc0e8ff8528e6b151f05d09e5d08f937d8dfe92ddc067532cee6198491f"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/WechatConnector.xcframework.zip",
            checksum: "2e109140b136a96119ecdfb6b2c9d0b28df916fb6a546e6b8e0d9a6750b114d8"
        ),
        .binaryTarget(
            name: "WechatOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/WechatOpenSDK.xcframework.zip",
            checksum: "2ed7eac7dd9de30177146692902461e8db60d41322d31e06d732ce426e4e7eff"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/XHSConnector.xcframework.zip",
            checksum: "7c212d622bf692edce69bbadbfbf526e1a260efbddcab810094444a415b877b2"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "ea2e8848ed8adddb46e38319ba12c21bbadfe9d3a83a9272f07c9782c89b7dc0"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/YTXMonitor.xcframework.zip",
            checksum: "ed8f8c07c60f938278bc9adac0bdfc178b8dbe7c384d772026baf97bf3ed0326"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532075/YTXOperators.xcframework.zip",
            checksum: "4a31594b69842087c343a8d072d7fb11151e8ce5bfb5eaebca10b4069bcf803d"
        ),
        
        // ========== Bundle Resources ==========
        .target(
            name: "OneSDKCommonResources",
            dependencies: [],
            path: "OneSDKCommonResources",
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
