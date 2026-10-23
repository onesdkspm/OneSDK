// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "OneSDK",
    platforms: [.iOS(.v13)],
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/ATAuthSDK.xcframework.zip",
            checksum: "4f0505be95cb653b48633fb3549f8fa739e5ca56bc5b2e4bd4b8c337e0baa696"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/DouyinConnector.xcframework.zip",
            checksum: "ae06cd2feea495eb2db39eae0791e5ea3a02abcc732665a4f5469cf0a39d3ed2"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/DouyinOpenSDK.xcframework.zip",
            checksum: "fe6ac088e96271f582d0eaf8f2baae39ee108fa43fb3ab35647a4f7afd7aa87b"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/FlyVerifyCSDK.xcframework.zip",
            checksum: "c0aee2e2ddf5a56ac9ed5897a17bbe6ad62f00d3c54bdd745f3e6e81e4c07249"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/FMDB.xcframework.zip",
            checksum: "2f58d95ae93921fe59ecff1b0dbeff6a5d1a8ec8cd135ee5f26d72cb9dbc05e2"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/GravityEngineSDK.xcframework.zip",
            checksum: "9c613dd5b29ca4cd4e28c26ae5d2dc4ead5c06f86263623e87d4758c536c2841"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/KuaiShouConnector.xcframework.zip",
            checksum: "a6d86951f4b5e33519f17b4d4f4f5f3f710b071538a83dde7066826f2a7e88df"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/MOBFoundation.xcframework.zip",
            checksum: "2df825e2afd88638558f3b0b621c49a6957bd7699aa1f95a4c61dab69a6b14ac"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/OneSDKAccount.xcframework.zip",
            checksum: "fbff4f0b1d9cbb5d16b74b92262e092b9e1cea9b2c07cef3eed79ee18568dc5d"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/OnesdkBaitianFramework.xcframework.zip",
            checksum: "13ccd6d8a084b65d48aebcb78ccb1fb5a65f791e4e322ec9bec63a2181c9d54d"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/OneSDKCommon.xcframework.zip",
            checksum: "d3fa47222ba694d0e8ce96b11fea0e67acf422cf64818666e116f74850d60020"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/OneSDKGravityEngine.xcframework.zip",
            checksum: "12fc953854f3e6f8ea2b22de885eef8b594754da6aaf6c7a1d782cce51376071"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "b256f9703d6079c802ab4f336abd69c9e506b23114f079205ce9d6e60eb2cefb"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/OtherPartySDKFramework.xcframework.zip",
            checksum: "0257e3cab78e4f14fb50d742f9674d1fe6f6c608805852b5bcf6f70d07eef619"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/QQConnector.xcframework.zip",
            checksum: "e1483c04c92ce8a77777cef04ae2a8428aede51cb43c07c67d7e6c3a1c4d803c"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/ShareSDK.xcframework.zip",
            checksum: "34c597eb916ee59436ecfdea2a501cb8820f621feeaa146e81dfe5deb2c36ba9"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/ShareSDKConfigFile.xcframework.zip",
            checksum: "55688b7d0556c3796f7c20919d071230c3c144c861a1854771c3ab66e0d56e1e"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/ShareSDKConnector.xcframework.zip",
            checksum: "54a8c527647897aaf2476ce1053f35678e8c7cbff91bc06ba94d9b84e280711d"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/ShareSDKExtension.xcframework.zip",
            checksum: "7028eb7ea4baea1396a14bd09e178c5258a8fb5e6b7eb1294d48fa0650ca08c4"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/ShareSDKUI.xcframework.zip",
            checksum: "e7570dfc6af97dd6b4e808f40262dcbf0af4ec47d8d43f1f50b88a7a0ecaf456"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/SinaWeiboConnector.xcframework.zip",
            checksum: "e768d60228961b6147660ff4bbe278d502c16fdefd5eddeb9461aaec995b172e"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/tapsdkcorecpp.xcframework.zip",
            checksum: "adaf5d61195bf7c26dc2198a24812f8f6a78e40bd7115e12cc10983dab92ee75"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "d31a2f9b0d5f46dad6b8f8cf4dc1d636ca1187c06c92cf4555fe11d3241456e6"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/TapTapCoreSDK.xcframework.zip",
            checksum: "95e128e6fe89c60ac30215130455a0c2aec1faabbf8a9505b219b133622cf638"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/TapTapGidSDK.xcframework.zip",
            checksum: "365136f082329eba67a98cf1d2511e4f92a40af41b4109e0f05ac29ca374353d"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/TapTapLoginSDK.xcframework.zip",
            checksum: "6bc802976c28eb0626cca259627aaf1e509cfb60cc319e8512db755668d4035d"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/TapTapNetworkSDK.xcframework.zip",
            checksum: "229e9720a138081a682a895cd23f05deab7073238d5d75ee741fd92da901b4a9"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "46258c5dc008ba652d9a793d97543dff4169f97c085461eed6b366eac19095f3"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/TapTapShareSDK.xcframework.zip",
            checksum: "a12336c90310b84ec9497dd40a9348036d6ed7605172b6d7750baa0839130b91"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/TencentOpenAPI.xcframework.zip",
            checksum: "d00c36768b1580bd5228126602a1653712752424cd5f2d0b5caf8d81f0fde815"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/THEMISLite.xcframework.zip",
            checksum: "759a5d6dfbd8a37568ace9dbe5d60f6aed4a8d7a3029457a06b0fbbe3601b493"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/UnitySDKManager.xcframework.zip",
            checksum: "ce7ae784d778570722de8fb56303e487a7e992c2b03125f1298236f425064cdf"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/WechatConnector.xcframework.zip",
            checksum: "2ad831a6d77d47ec9df58cf1de51a66f08b50383e3586611c24fc6495b12f13b"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/XHSConnector.xcframework.zip",
            checksum: "4526a74e15ed46a9adf22218d7e5116538d8f202d3ce1588556e0672b4ab7dba"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "7c5cdd44a9c7e48ee689a252c245e070e1a794505cd8fe659da9f7ed22d79aac"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/YTXMonitor.xcframework.zip",
            checksum: "85b381104c5b2af88b6928396fa63bde0ceaef5185a3cc9f4cd61602042da353"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552543/YTXOperators.xcframework.zip",
            checksum: "e68cfbd5de942ab2bb6dabda5d67480c6467b23bae75aecfc5d2272564a3bdd1"
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
