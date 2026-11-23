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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/ATAuthSDK.xcframework.zip",
            checksum: "f17a9a7b8d80a003730a0946928d6a7b04cf1c6f1e83a27ca81f6734e1cce710"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/DouyinConnector.xcframework.zip",
            checksum: "44332d99f44d464019a43673656a69f04370eb48b6392a11e0fdddc0aa7fae55"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/DouyinOpenSDK.xcframework.zip",
            checksum: "2cfd1f00fc3d1d3d150272aebe6ab427d747e90997f2b2bb2b9a8b2ee89b6f40"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/FlyVerifyCSDK.xcframework.zip",
            checksum: "1245362f764d5b45663a64c045cc6dc444e9a4bfab97491951201f8cb1e58357"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/FMDB.xcframework.zip",
            checksum: "e43b638506c9b9f95eb0f864991f78cb107538b4828eebb2c54998cf569d5eb4"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/GravityEngineSDK.xcframework.zip",
            checksum: "2fd5549a419c864ec112ab27c07f4d24b06f728f6a5062f4630a72502bc8d6e0"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/KuaiShouConnector.xcframework.zip",
            checksum: "7a22f038f6b1d3ee2b281958055abf45d34dfe6ae184e67a9f06e0233e33a7c4"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/MOBFoundation.xcframework.zip",
            checksum: "a8df8e5cddcbc28ea9895992240e2718e6ba576d8dca2dcde09b95e58fc64172"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/OneSDKAccount.xcframework.zip",
            checksum: "87badbfd24c2232d27360899b756ffa511a22a043494b123f07d1b2b98ea7d96"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/OnesdkBaitianFramework.xcframework.zip",
            checksum: "a0f56064ed246f34b28dab119564452971f05e7dd78fb8781b5586710fc9b502"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/OneSDKCommon.xcframework.zip",
            checksum: "979d0472ffa7df0d6346c5360c97b6f8a6bf66ed47c1c6d0daf1aace65830e79"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/OneSDKGravityEngine.xcframework.zip",
            checksum: "65b626bd76aa209820b4bfe8ec93eb1a65c05505c9c8a4eb9dae9635560b8aa6"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "41f5ce7130434c7afe0493a30850181a3ab501f71b47fc194e57f4aa212b8396"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/OtherPartySDKFramework.xcframework.zip",
            checksum: "2daa7d040541f14d589d5f570f2ea3ccb4e75aaa6dc052730862bb065fbdd17d"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/QQConnector.xcframework.zip",
            checksum: "34d694ca8e1bb23448f75d77c0b5a2e17802aa42a98456d6e5bf6f4449ac7642"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/ShareSDK.xcframework.zip",
            checksum: "97a9c488b603f0ae57af4b649157763caa64b71126e591ef2afbe7fa4f0f25d4"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/ShareSDKConfigFile.xcframework.zip",
            checksum: "0f1cd1eee7acda87257b9235410176fd3dc6ad498d07fa9e915bf8dfe6e04739"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/ShareSDKConnector.xcframework.zip",
            checksum: "c469ffaaecb8541b800d3d7f8c671acf3540eed5a1ed3e25841345f441235ed6"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/ShareSDKExtension.xcframework.zip",
            checksum: "a7ca48137cf36a37d0a815764bbdffa75f6f9de4657ed8da00c42a9e103a9abb"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/ShareSDKUI.xcframework.zip",
            checksum: "6442a1cb51cba6b63ba8c7915caf67c67aa8a2cbea7af63082baa4e6bbb9d9f3"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/SinaWeiboConnector.xcframework.zip",
            checksum: "f952a3c805c08cc42e3f3fe38d4de8956f3fa04ccd8ff9d3335c9286544772b3"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/tapsdkcorecpp.xcframework.zip",
            checksum: "062e9d609056c63714ae3e816c2d968a34a5f7c794d7d500ebef95919df5152e"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "b3c23b2865d18e0ec3656ffafc697523ed9dbbd008d74d2a966203649970e749"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/TapTapCoreSDK.xcframework.zip",
            checksum: "f2099e1e2434ca198efa2d4825b0c857f8090e5222c8c92461d7f91c235e17ad"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/TapTapGidSDK.xcframework.zip",
            checksum: "c408e26683a238b10ab902dc4a44587fce1a4df04edcd697afe83729ab9ee36d"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/TapTapLoginSDK.xcframework.zip",
            checksum: "4311cf4861b66034101d4cc9c3734c3679525d768f2070cc25899d413c6a3c61"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/TapTapNetworkSDK.xcframework.zip",
            checksum: "33b45af119ff14050aca41053fedc5fe72fc5d3d646426469448dca964f9e034"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "5dc717d01b258f80c7ea131e6966777618b9eaec00415c08180a425d7742ef98"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/TapTapShareSDK.xcframework.zip",
            checksum: "9c9307e9d7cbd24bed491ec4c0902ede2468e983f5b3017445a7d26fdfd71e22"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/TencentOpenAPI.xcframework.zip",
            checksum: "5a4a6a2c7a67ac254ac4941225b043fb403b22271c15500073c4f46f67bc3bce"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/THEMISLite.xcframework.zip",
            checksum: "5768e165f19e186eb9cb695fee07294e4606fec7d8b23b9ff046486090aa0c73"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/UnitySDKManager.xcframework.zip",
            checksum: "1f424db557e67a10e5bff9075ab8897aeb08e560bf935545879741c3d1fda507"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/WechatConnector.xcframework.zip",
            checksum: "b1626dcc6d88d203609044aa62b9d30cdf583c97221a1b8ba1352c5d409d421e"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/XHSConnector.xcframework.zip",
            checksum: "fe02d177fd4b66ee01f54afaecb16e9f5afbaf20c880765f6f723ea1381870b3"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "9a1ccc6d5848e835df42c68e060ef14e1112d5c8c85c6e61208ba90688a4eb58"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/YTXMonitor.xcframework.zip",
            checksum: "b0f9e2080eafb2e8fc4b9504ab511c9355b993f16ccdf7cd2cac97a472a8f59b"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573824/YTXOperators.xcframework.zip",
            checksum: "a13608e47c0c2bfa86ddd1a2fb17b58b6eeec871828cbcdea224e2e02237430e"
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
