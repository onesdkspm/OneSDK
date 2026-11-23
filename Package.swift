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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/ATAuthSDK.xcframework.zip",
            checksum: "9f5ac5ab6b1db6fae1b3245e54a5bfc3e01b7fbf5451488dcb7020ff4fa30cce"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/DouyinConnector.xcframework.zip",
            checksum: "be88ee97b38861d56b1e8d0fae89449c4f72cffe086b25a5ab2699bd5045f397"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/DouyinOpenSDK.xcframework.zip",
            checksum: "952133e6ca9de1c7e1d71f36fc9bd6396c9e717edac7c602e9352d191cb6fc38"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/FlyVerifyCSDK.xcframework.zip",
            checksum: "cbb33ffd25d7d9d95dd8818d06401b322454ad5f16b19aa90e80c3d32c57aa78"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/FMDB.xcframework.zip",
            checksum: "6d155d3e6188161b08ee891bcea4c29377f2caa99e841df0870fe3ed8056c331"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/GravityEngineSDK.xcframework.zip",
            checksum: "95f71ff412200d2e078478a3b57e9bfc0eb26a91f58be5b0b40603f44aa626c3"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/KuaiShouConnector.xcframework.zip",
            checksum: "2b9bc6b63af8b5c42b5b3ae075187e1d6567a3294ba86ec7dcffdcb61c4058f6"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/MOBFoundation.xcframework.zip",
            checksum: "b22a9a536f05793ca0d58e2e85695b729808be959bf5a86116fbd3510af9535e"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/OneSDKAccount.xcframework.zip",
            checksum: "f2856b9f73ac6947df2ec08f8b74d6afe64f626d6dd1785ae145df53d6585dfe"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/OnesdkBaitianFramework.xcframework.zip",
            checksum: "21dec398b5d03038726880f2af3977898572c95509628969b7f4f707f8433d40"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/OneSDKCommon.xcframework.zip",
            checksum: "22052ac2c7c78ad4c6a41c9d00ad9a566acc8bc008e2dd074ab0e3d30d9cf2bd"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/OneSDKGravityEngine.xcframework.zip",
            checksum: "83ddca28006c71634a139872e618c0186ce0ebc74440f934aea23312d6a85865"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "e3706aa53f7dd61f06c2e55c769eb200338ee0f5349381b4b45089954db9dad8"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/OtherPartySDKFramework.xcframework.zip",
            checksum: "f915cc811968e676d00f76d236424546820081da2549e9ae09d481435a7498a7"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/QQConnector.xcframework.zip",
            checksum: "88399260bb17fef95e8b53748520a535560bb07859fdd91d7866ee8d38e29830"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/ShareSDK.xcframework.zip",
            checksum: "2dbd6f409670d75ae497aed8b821de316075c5c783b58a19bd3525cc0ab23ed3"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/ShareSDKConfigFile.xcframework.zip",
            checksum: "111cb7ce15d221aea4d815aa13a7942d1bfba60d4aba28f656501caf8c98cf7d"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/ShareSDKConnector.xcframework.zip",
            checksum: "6c7936ae8ce9538c6bc28be4fe14c68a753b40413e0084ca114cc1903cd2703e"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/ShareSDKExtension.xcframework.zip",
            checksum: "2081cbff0e5e2404129e5bd44a59312697e7006e6c5e615ce1f0710ed862fc73"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/ShareSDKUI.xcframework.zip",
            checksum: "f4d9a353e9be1e168b25ea7ef5481faaa123dfce8660a877d1f794f918d11481"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/SinaWeiboConnector.xcframework.zip",
            checksum: "df5814ee46c093ee86bdfaf46ab064dff613edc98d9efb604a3e489cd4fae7f2"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/tapsdkcorecpp.xcframework.zip",
            checksum: "c835301ad7e881247375f78850537a4c641b1eee53138685c16ad06a76d899ef"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "4e56148e6ec5ed5db9a0b831a635ee7cc395f11071a85c3c4015f2920b6cff20"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/TapTapCoreSDK.xcframework.zip",
            checksum: "5296043a41a27a44fd3b3733c7599c892fa50fbf34d603703c73e177434b2ee2"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/TapTapGidSDK.xcframework.zip",
            checksum: "73b37874a1a9d0e797f56cfa2f4dff48db0fff6ac903e8df60e5ffac39d9249c"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/TapTapLoginSDK.xcframework.zip",
            checksum: "80ff1ceb0b7a68a90059b1dae6ab147d0bfdf067a865e36b04ec2dbac492efa9"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/TapTapNetworkSDK.xcframework.zip",
            checksum: "d5f4fd93202a6f628cece353d2ccde24a1d25db75316efceee035e9b7d24c366"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "1eb9cee728320eec3c842949b1a9080744cc8223282afd16b190b09ddad5e6a7"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/TapTapShareSDK.xcframework.zip",
            checksum: "612b032cc38a179e93891c2055d7f647bb3ea35f8730f926adf9abb8597fec70"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/TencentOpenAPI.xcframework.zip",
            checksum: "7c5d302047d907e61859bc831769660d067b34ed9b9c07ff4c09190c517134b5"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/THEMISLite.xcframework.zip",
            checksum: "f3091e64f50820e650241f39918906aed7b53b65fb8305dc7571b78c9627312b"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/UnitySDKManager.xcframework.zip",
            checksum: "052ee7501e0e90c76298c39b889bc21f9990bd6154e75b39185f41c60f2f41c1"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/WechatConnector.xcframework.zip",
            checksum: "449aa7bd16d85c1cf43c66f54a45f57d457883cff3799a7ac0199179a18336ba"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/XHSConnector.xcframework.zip",
            checksum: "ab3efc5070d6a483b6bb42eaa4e574a12c0c9fdbe8e005fb149962294fa740d7"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "22f055ac969afa699ecfce17822cfe890baa1c52b8b6b7b916ca7fa094d7386e"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/YTXMonitor.xcframework.zip",
            checksum: "0c34889480fab7535d4b28fe428a8a051ef45d5bc1ec459c8998e39bdcd1aaed"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1573391/YTXOperators.xcframework.zip",
            checksum: "278f5b24e93abc577802dedb8a276e6f6403cc6abb543fe2b28e793505e94f69"
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
