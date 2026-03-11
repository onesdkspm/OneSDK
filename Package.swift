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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/ATAuthSDK.xcframework.zip",
            checksum: "0ca1951292e2188489c25b7339064665234382ed36020115edd250634bea3d6c"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/Bugly.xcframework.zip",
            checksum: "1becc44b03c3ffe243eb0461847f4fe022acb5ea471406cd27a9f3376ff0d772"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/DouyinConnector.xcframework.zip",
            checksum: "cb63ce9f3d46ea83272c2619b01abbf263a733f982eb2a8c6cebb19d3c0e2350"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/DouyinOpenSDK.xcframework.zip",
            checksum: "3b996e1285bc87f2db67e05b5696f866139402a7e2f7559d6611885f9a093475"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/FMDB.xcframework.zip",
            checksum: "f984b81eca9efa2ac7f750a1e6681b0c6c4bdf2abf888316d3235faa65ea8699"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/FlyVerifyCSDK.xcframework.zip",
            checksum: "6fe0e75238003f0297467d0ef521388174dbb45cf04f5ff6726c1062df5112d0"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/GravityEngineSDK.xcframework.zip",
            checksum: "a972d3c3800cd1f362ee1cbcd094389b605c9dd58601bcbbd236c42636b96c4e"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/KuaiShouConnector.xcframework.zip",
            checksum: "aa02076249952f34681a74d04a06b37730734119621d3273e69f3951f97079c5"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/MOBFoundation.xcframework.zip",
            checksum: "43ca645e0c2c63e78282fb9eed51468f6e7e053e3bd6e345b55a153d16df06c4"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/OneSDKAccount.xcframework.zip",
            checksum: "0af746481b4ed9139d3fd43fa1d7613715d59f4dc624c74cb13fbfca3ab70c1f"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/OneSDKCommon.xcframework.zip",
            checksum: "e1778c00977f3d7347bf22124af4efd3f1cb0dd76f5a36a68d2587f05fcc6616"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/OneSDKGravityEngine.xcframework.zip",
            checksum: "589d65fa4881d3e415ec9ae3e4235f94e97114f5f58f2c550d7f444752a26a93"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "023629dfba3f0b4bc06f8f8cfa3c8b31bfa6ade0cc87d5643c533241fb519d84"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/OnesdkBaitianFramework.xcframework.zip",
            checksum: "0f0357d7cf583cc67c49c9bdfb5c61233be32d5aa367db106ea9dd9a4df2039a"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/OtherPartySDKFramework.xcframework.zip",
            checksum: "dad44ab60b7b4c1d1a70b65f221bba4e749ce23034aaee5dab1fe22d7eb7b7ce"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/QQConnector.xcframework.zip",
            checksum: "088c04771edcf32ab1bcfb7975953d201847943a8caa78aefe205201ad1d6820"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/ShareSDK.xcframework.zip",
            checksum: "3d791e3ba3ad28ae17b60f09bbc528244a239d00db0f9c48f9ab3955d490f2d3"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/ShareSDKConfigFile.xcframework.zip",
            checksum: "2eea6855b2285c8da78b79e920b579a5b9282407ab90d6fa96201424262a2774"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/ShareSDKConnector.xcframework.zip",
            checksum: "3bb6b2f871df2ed513a6979aef0f0495f3c02ecae5bdd6782e2faf6a979f4c26"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/ShareSDKExtension.xcframework.zip",
            checksum: "fced1c0fe0e1d7a65892132670be0446dbf71863013492c74d21ed28b7461aac"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/ShareSDKUI.xcframework.zip",
            checksum: "413771aedb43ff2da35d74be3fd75e576b3eb853f0a508175db2948f4051b3bc"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/SinaWeiboConnector.xcframework.zip",
            checksum: "8f20ce9b8aaeb7a7267e7d31216379722a13f9a0acc1434eb674b28174b03613"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/THEMISLite.xcframework.zip",
            checksum: "e72bc87339019705f3756171a9ed1889f20f3cc8b3924149a9fd3790d2b3fc1b"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "d2d1b215cdbea24c53493290037e55c20bbcc8880c3698d1e2ed9073f1483a69"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/TapTapCoreSDK.xcframework.zip",
            checksum: "aca21082185022958cc9e9f8dc8c66ce7d5faf84b58aebab9bea7065a2a6df89"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/TapTapGidSDK.xcframework.zip",
            checksum: "1febdd07cd47d7ff8355cec1ac719b7152b56bae39d4c5353a1594f501afe659"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/TapTapLoginSDK.xcframework.zip",
            checksum: "59b4d4b3e155c519a412a1284e67ae39cb6d9fc3958332d0e1f7f2e91fc74850"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/TapTapNetworkSDK.xcframework.zip",
            checksum: "40c5a27ac5ee2a3a23ab705dcfba14517a5823ce2a1ee953b01e3a82d112aeb5"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "e22ac9d8af8eb91494cdc939c9f0d9f058bf8683727147f2fd5c3461a0cf07a2"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/TapTapShareSDK.xcframework.zip",
            checksum: "a4e9dc5eca6028573e4f7095d3cd30171c629bf095c8d74307d590557567fb5d"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/TencentOpenAPI.xcframework.zip",
            checksum: "782d9387a07aab7335b36f00c2dac3c0ec315a3257a85788a766292d72b9e0f8"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/WechatConnector.xcframework.zip",
            checksum: "2a85c0495c8f029ee2968e06510c22f4da1dfeaac60edb9d2ca91a69bc5361c3"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/XHSConnector.xcframework.zip",
            checksum: "a679661765943bf5ab6276812067c239256d4a0c7fb916a257e3ea62ff8f0dfb"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "0d53143cf08e00f8736ecb7fcbd95509c9804d6789e885111fc131e9c09a4234"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/YTXMonitor.xcframework.zip",
            checksum: "870593ecec8774997f475966b34e29c6e7c2f9e7a78e69d06cff55e321314c81"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/YTXOperators.xcframework.zip",
            checksum: "63a1d2cddb2ece78b8d127ec9662c90c2d13407ea2b54a67300568feea7ee884"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396571/tapsdkcorecpp.xcframework.zip",
            checksum: "0c169f368fa7884387acfaf8a1d552b1472b66e41a875a1dc022b024ceed17c0"
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
