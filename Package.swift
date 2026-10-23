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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/ATAuthSDK.xcframework.zip",
            checksum: "e4a4aeaaf48d2352cc8a3d5fc5f196feefe46d8c16ac215e63304291d74770bf"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/DouyinConnector.xcframework.zip",
            checksum: "0a7b3b099ba249962203f4d1d2eea8550a937cef1a5bcc1a802771874ba00576"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/DouyinOpenSDK.xcframework.zip",
            checksum: "8331267b0bf834bbd747334627cc77ea069def9aaa2a285c3b91c46934df1ada"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/FlyVerifyCSDK.xcframework.zip",
            checksum: "e98a1e9d63bbd102502c90499a13300448825c688a3ddc712e14e1df4322d98d"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/FMDB.xcframework.zip",
            checksum: "3660af16e03f4c6ed767ce5c7c0f3977fa2068680603d04c4057902e9d0c221f"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/GravityEngineSDK.xcframework.zip",
            checksum: "79a801da2dba4adfbd56fa3bbdc37fbf652f21706f3151bfe72b3ea38ee364ba"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/KuaiShouConnector.xcframework.zip",
            checksum: "23d615c26e193b71222d3fe697aac41a0673f9b19939a89e06d676c2179eb208"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/MOBFoundation.xcframework.zip",
            checksum: "eda2c29d74f9b7bfe25f06b7292e88fb932b6b54d7299aacb9a1d0df0fbbf546"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/OneSDKAccount.xcframework.zip",
            checksum: "7388f87b230f4aaf470b0a2555e4854bfbd80fe1f8bbacfd60b10ce710d8028f"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/OnesdkBaitianFramework.xcframework.zip",
            checksum: "4a929a1f9eff940e2dd04a9161e47f21882342f13d333c7be22d6f245ebf0183"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/OneSDKCommon.xcframework.zip",
            checksum: "ee860e99e6a38f9e145000178be862ba97e375abf28ba4e1e31d35440007dc35"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/OneSDKGravityEngine.xcframework.zip",
            checksum: "026ddd9c57aa2daeed3a1605ac57a9fb02b87fef238168ddd2ba62f711a9514b"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "7635640f6c324d870bbe154efa07b89afc7ad94010ee4ec5a1901d6dcc207e98"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/OtherPartySDKFramework.xcframework.zip",
            checksum: "c0cb95d714fb566db9ba40c9e084924a0f51f679f4567c74e27cc43ff6e896a8"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/QQConnector.xcframework.zip",
            checksum: "d64d073a392ecb5522ff46d050a8f11f3de586d18fb2c566d89fe3298e91dae0"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/ShareSDK.xcframework.zip",
            checksum: "b7d007eafd6d63701993ab66629a1f6147ba029d8c5e6ec8dd9a0a3e9d4ee771"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/ShareSDKConfigFile.xcframework.zip",
            checksum: "1c543c4189d5c9af1370d94afbf0eedbda443b49b1cffc13dbbd08af3d501535"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/ShareSDKConnector.xcframework.zip",
            checksum: "7821a939106b025522ad1632b0a60a3cacd197d704bfd6a55f49e6d42abd79e4"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/ShareSDKExtension.xcframework.zip",
            checksum: "917ef1b13bdfce8d6d2d26c8d89c40b7cd898d37c77a42d57af43561e959ecd1"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/ShareSDKUI.xcframework.zip",
            checksum: "cb0d8f464decf6f768be789832d4f09ce5538e6666bb1c5be8a27dbbe3e4099a"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/SinaWeiboConnector.xcframework.zip",
            checksum: "f50c7eb93fdfe3df6f26aa380669ca9b7e36db44cf430402c08ef30797d9540e"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/tapsdkcorecpp.xcframework.zip",
            checksum: "d3958a67243a0950aa1a7334ec8bab725558168641d0cfcb97a7ca62b9166880"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "42ef5daa283ee0d5e69e99c49fd738ec374d6d5be99804221b4ed6cb2c7260d8"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/TapTapCoreSDK.xcframework.zip",
            checksum: "f9c316c013d657f81788829be887ba97fadcd65997b51a4421a4a2425d0724e6"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/TapTapGidSDK.xcframework.zip",
            checksum: "8642244316b32848420e9988aa8c09a3691bb44a4e427ff99eb616f37808fe1d"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/TapTapLoginSDK.xcframework.zip",
            checksum: "d1e8a2b2a15ac76c57683cec3bef5d639a5f95e2f1bbdde0c7202889167b32f3"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/TapTapNetworkSDK.xcframework.zip",
            checksum: "2a74b0ec09432278db327967f9758bfa05e4e1f6197d715b3c8ed41f0bceefd4"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "cbd42e78696a8d72b025c69dc7f9df6ea1659011d1ce7402eaa8ec19df3db133"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/TapTapShareSDK.xcframework.zip",
            checksum: "9bb1c10d35007f498bbaf80ef7aa2065573deb39f8df794a5a1826858d1a8892"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/TencentOpenAPI.xcframework.zip",
            checksum: "6a39ef8292ffca9e972a3cb0b4e32f599c300bd41536862875dc1e885d6f3146"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/THEMISLite.xcframework.zip",
            checksum: "0c264e790df48035c1cb91ac938d8459e584646dd9505496c1fed246e12f42ea"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/UnitySDKManager.xcframework.zip",
            checksum: "b59a4563178ce5f4bfddfc84bc89159b09c215efad9f02e636f33185005924e6"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/WechatConnector.xcframework.zip",
            checksum: "1f9cc7fc93e441f5e94ccfd4a2e339f364f2fa3910aa39aa7d2f339ba79e81ac"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/XHSConnector.xcframework.zip",
            checksum: "3cc685b1be5feca7b78dd24b04a6f15a485b5ea2d8031103a69ea06fcc96ee43"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "d838be6e4879156ca77c7a74fa7e28c67f777cc51ea6f5769e306de61178c4d3"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/YTXMonitor.xcframework.zip",
            checksum: "ce443d8ebad21075e295a620f861fb6a0e54fce4dcdcd1b57cd1310a865d87b7"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552249/YTXOperators.xcframework.zip",
            checksum: "b46c27bb0093997f22e1820769d40bb72158c55d17ec811778582544d35ab4e2"
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
