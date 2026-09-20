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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/ATAuthSDK.xcframework.zip",
            checksum: "5bd9991a5576dc9019fd9424ea95d5eda57c8a6307bbff8e1d75efd1018c5a40"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/DouyinConnector.xcframework.zip",
            checksum: "633c152b20fb6d4df3abf05b7899d2bdde609f8bb1ba13a0f8a5dfd0aba95885"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/DouyinOpenSDK.xcframework.zip",
            checksum: "5282489cf62901d3ed5249d0d03442a7e56afb10fa2de7e74580a8bfd690af93"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/FlyVerifyCSDK.xcframework.zip",
            checksum: "99ad6a7edb94f5a2951b06e012d747b5cbfdea51780b5f01279b7c29b73e786a"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/FMDB.xcframework.zip",
            checksum: "0121617c912e47c8aaccd00b57dbc790c02de54e62b5f8115b7d30fffbf1acd8"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/KuaiShouConnector.xcframework.zip",
            checksum: "7e071f8ca5667cfe8e754754fbe456c65661ba8ddf33bafd490e0f102abd1b95"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/MOBFoundation.xcframework.zip",
            checksum: "383f30fb034b18e79159254bf61aff93817e2e4f9ca226ef92f560bc7f0612a5"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/OneSDKAccount.xcframework.zip",
            checksum: "c2b3eaf285e004f0d69dfca660d12a5a76ebcb12b429a136c3f04abe5163078c"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/OnesdkBaitianFramework.xcframework.zip",
            checksum: "5a55e77811ff73bef7d21a0a0ecb6ea24a9a33c4f8d4ef161fae0fc0010ffbf4"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/OneSDKCommon.xcframework.zip",
            checksum: "8edea1f25b008df0e948b2fb0e4bef4b880401b9752bb7ac232f0c2c3c769f49"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/OneSDKGravityEngine.xcframework.zip",
            checksum: "129d7de7bcdabf657895ac2a76377fbfcce6b60b3dfee6871478a70d2fb51c69"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "ed8e6aaf9f1a08e4e4b51c92df1cabc62bc9e582349e928ef454d7a55edd71d5"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/OtherPartySDKFramework.xcframework.zip",
            checksum: "1a11eac4fe3e5039f9491963c7f41e9f2c704491cd27e0cb1e72bb81dd49c660"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/QQConnector.xcframework.zip",
            checksum: "e706eec8a195469dcda0032c59853e79ed9d4ce2d692fd2ee83c0f66489c5584"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/ShareSDK.xcframework.zip",
            checksum: "7b04b74772d9483a355dc001654c68fb1847c3c48b11baca0df01ab892c7cc9c"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/ShareSDKConfigFile.xcframework.zip",
            checksum: "5b49c98b69a1168ad783d16b5d86dce212ef85c947891a8ad991e9926508a269"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/ShareSDKConnector.xcframework.zip",
            checksum: "b4243df0d5cf7ef27e5b1628b6b5bb6287ef888b495a084f5ffb4840c74b642a"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/ShareSDKExtension.xcframework.zip",
            checksum: "d83441bc9795d5c477762517b143b5d6b19cef312e9670af73a6513bbee329a2"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/ShareSDKUI.xcframework.zip",
            checksum: "5831eb009340e66b70e7126c3f0a82f3d0d2919b0f00f74db91f4b42d0251fe2"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/SinaWeiboConnector.xcframework.zip",
            checksum: "06af3a5e0b706e3b3dcd35e2152352ed233bcf4ba17dad91f85b88acde03b39f"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/tapsdkcorecpp.xcframework.zip",
            checksum: "aabed751099b1cca37622c9f0a86d69d91058edcbc87f4ae24cddd3e338f63e9"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "defb24a85ecdfab36f4b98b19fb902a34e7b10dde6ff17c2a47968cbc92be5b1"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/TapTapCoreSDK.xcframework.zip",
            checksum: "dfcaa4d60ff2813826e781ef260a006cc359e6e2a37006f3a916c4083cd0f2be"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/TapTapGidSDK.xcframework.zip",
            checksum: "287f6d45cf9cff32446f022a8f1abc34abf0ac09722e4be614baf4c9bc4159c0"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/TapTapLoginSDK.xcframework.zip",
            checksum: "902676e02948dc208f6ef8dd2a6db9c0ebe19625f116ca356a861f148780af8b"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/TapTapNetworkSDK.xcframework.zip",
            checksum: "bdbd3336fd185bb6ec87950a7c162d105aa2d345d411b60d360014ef8fb0c97e"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "d8ecb9223ef7e6e32aa237f7d0c8d71e35c20f0a72acfa9d93e302ddd9bf3a64"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/TapTapShareSDK.xcframework.zip",
            checksum: "2ee843f6d164c5720edbd0fc50f86f6644af4a141f9d5cd7c6e0e78c109e1d64"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/TencentOpenAPI.xcframework.zip",
            checksum: "7bc9a50e9ebdb7d1129a8099fc26cb708793dc2415195802e2f012d2a8225167"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/THEMISLite.xcframework.zip",
            checksum: "8a86a91009e784a32c2fc363e3084e3a0bb4a8decf39d45e32d476c83a69e246"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/UnitySDKManager.xcframework.zip",
            checksum: "91efa3b2abe2b5c63e89d7886be5d86a1826de2996eb65df558825679511a7b5"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/WechatConnector.xcframework.zip",
            checksum: "2783e88ddba753e4ffad55d076111e77de85c05067049ba3ab8b22a482484ede"
        ),
        .binaryTarget(
            name: "WechatOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/WechatOpenSDK.xcframework.zip",
            checksum: "89643b5da6ee44c03571fc75ab2072aaa4c00040e49d50340dcdcb27db6ebbd7"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/XHSConnector.xcframework.zip",
            checksum: "625d52844810b1ff5a87f0dac265d60a93bb3cc620993c5deba3f0474a696fe4"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "59c8c0a77792205173f69b375b9743d39a3c88f660c9fb9c50266f19d502abd3"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/YTXMonitor.xcframework.zip",
            checksum: "26f68c9fe60a75f79ac5c2d3a322a4522be695774d62550e8b58455ad9ffbec5"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532121/YTXOperators.xcframework.zip",
            checksum: "594dc55de73a868cae07617bcb5c03067ae7a371558507fa001388f95f902ca6"
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
