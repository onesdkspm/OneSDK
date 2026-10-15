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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/ATAuthSDK.xcframework.zip",
            checksum: "7804078a2f636c511de2b95cadc829038f76a4dbfee8aad584f01534002a3549"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/DouyinConnector.xcframework.zip",
            checksum: "ed43f74fc7f27d1ae2f3f1f2fedebd4dbcff3670b55004b6de556bd6f3758bf2"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/DouyinOpenSDK.xcframework.zip",
            checksum: "58018baad01263933f52faf4e59dfcd21103a10db4c9bdf438cade5ab6ef0158"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/FlyVerifyCSDK.xcframework.zip",
            checksum: "ca1af3471f7d514abc5a5039eb06119d64108363bae7e17043983975b6849a00"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/FMDB.xcframework.zip",
            checksum: "debdcc6755a8169367cea26c8f903a0d050f99071528392b626c945023c6b9d1"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/GravityEngineSDK.xcframework.zip",
            checksum: "032b9beb925ea9403afd688f717957b338406d83e0e8e7a24775b01c3fdb54e2"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/KuaiShouConnector.xcframework.zip",
            checksum: "9bf41965c9dd6c523f8b0007b1f3c3fe0d666510bf852d02f14a819393c7302a"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/MOBFoundation.xcframework.zip",
            checksum: "2a511c806e15e3800428e5d5deb2da2aa72479f582f0edef0a17d0669adf5a47"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/OneSDKAccount.xcframework.zip",
            checksum: "4c8d350d28907fa4a8d6853bfc29551231bb02764b08abe6b897ded2c728595a"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/OnesdkBaitianFramework.xcframework.zip",
            checksum: "6227b68a895281bbe48aab5f0c2a4cd9025bc640948cb37b445b45e86eb2e528"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/OneSDKCommon.xcframework.zip",
            checksum: "391b1c1c6d30a91e02349d83271e60a9f0c835096688bc5fbcdb062f764d29ce"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/OneSDKGravityEngine.xcframework.zip",
            checksum: "5fb4607368d0bc89ec2085b6777c2cd50f4e6825c058169af34a29a496629ce1"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "9a9c61dd64e1cecf9a8541d921130275569e1f409c4aa2faa2780c0098e8d3ad"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/OtherPartySDKFramework.xcframework.zip",
            checksum: "9794b333430b371578152625764400aca7fa15c1f77921e9d48d0e15259fa2b8"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/QQConnector.xcframework.zip",
            checksum: "8920e2f543b35fc16bec811ea1e5df999c3b5b55f9a748b48bb77a777d246ed2"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/ShareSDK.xcframework.zip",
            checksum: "27e5f1dcfef863fb8cfc09a25583aa9cff000a1d21d6d1bc199361c2b8cc6971"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/ShareSDKConfigFile.xcframework.zip",
            checksum: "d529fa735e0ace2d8635442e218e368c8968ba5568dea2feb1174393af888af3"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/ShareSDKConnector.xcframework.zip",
            checksum: "6e5c848c41ee9fd6cb1b5843c4b16a63f4cd66a34e33599dfac3715a06e0ad94"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/ShareSDKExtension.xcframework.zip",
            checksum: "31ed9027e85b2b81f1e04cbe315491f7601a58ec03cb19ae3eee2b8f0c4ab6fe"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/ShareSDKUI.xcframework.zip",
            checksum: "d196c9f6855e55997b73a71ad19c5313a7b7b3db305682883286165b7ef2badc"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/SinaWeiboConnector.xcframework.zip",
            checksum: "2b5ea474eb891cd233d50c81dcd7758f59d941741ba64d6ca72e858eba6c4420"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/tapsdkcorecpp.xcframework.zip",
            checksum: "b83e2a8625a1f47316bdcb5b92c8b21fbd8cc1633c933597fdde4efc894cb41e"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "003873a2ffbfd73b5aabc89d1b8c5587b535d7d8c3426b25b3534e2da112989b"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/TapTapCoreSDK.xcframework.zip",
            checksum: "4081732cd906e7731a64b4ff31c169481cf45c6353055c51cce6508c86c42f5d"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/TapTapGidSDK.xcframework.zip",
            checksum: "994e248169a069a7e04cad97e26b3159f9a2278ba877767e89f65a494b8f9fb9"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/TapTapLoginSDK.xcframework.zip",
            checksum: "d2a2347960acbd0bcb3ad4ae417c4415d21df57c01a92b5ced3ba38980c125fe"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/TapTapNetworkSDK.xcframework.zip",
            checksum: "66958a6be33d1412f5d5cb13e0e1c018a592a17a701370e94c2aac2410fb47a0"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "1ab3a67f05aecd910b910e8640d36b37a0fe16579b05637eb0cc0c6ae4cdcc4a"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/TapTapShareSDK.xcframework.zip",
            checksum: "1782d2d6077ddb3013ba789825db7527e352778b29cdf39256237f57ffa470fe"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/TencentOpenAPI.xcframework.zip",
            checksum: "de1f5d7433246991394c00a9439dc54ddbabfc7ac61ea10375839316a4080543"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/THEMISLite.xcframework.zip",
            checksum: "ffba9c1fa24e99db473925baa8e5d35144e3502f78d3b6b4ca1382e5b2c976e4"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/UnitySDKManager.xcframework.zip",
            checksum: "3b39291a9705b102ed49678ac0e47041e7cef18b8c52ad5225c59ed0021b1aca"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/WechatConnector.xcframework.zip",
            checksum: "5ed049db42bee69f2a4708ea7a9d10f1be83a508fd9c082b46740232739cc4d4"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/XHSConnector.xcframework.zip",
            checksum: "24a02a910a29c4ee075a893f2cb299f2ebe90cdd6b7fe6dcfac79bd1d43c3dd2"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "4d6cb2864a653c98b9d096e68bd2f57de007bfb2de09841763aabf933474a0a0"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/YTXMonitor.xcframework.zip",
            checksum: "276badd7a2a68973d24d48b036f164e5d4586ce41104abc648b9b6ce9dea3508"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1546739/YTXOperators.xcframework.zip",
            checksum: "6afc31153f97c6ce9f6b50e88da4632879b9d76a66e4250184f99303cef6c876"
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
