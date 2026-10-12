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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/ATAuthSDK.xcframework.zip",
            checksum: "400b663f080e5feab4ec4ffddbd497aa8772647eee960feda79cfae684efdbb6"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/DouyinConnector.xcframework.zip",
            checksum: "18438dc20ce9c514a3a615e833fbca9ec3ef8146f9034aef163b0ea6d10883dc"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/DouyinOpenSDK.xcframework.zip",
            checksum: "963cca73dd669f95870e1354b8c81492121aae4b6f9a61cf1865442ab34c72bf"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/FlyVerifyCSDK.xcframework.zip",
            checksum: "e742f2997bc4fc6d71e3901f3b454d4ee3ca866f7f0bb65bfbb06afeaeae2c1a"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/FMDB.xcframework.zip",
            checksum: "3931424136d439f509cfe037f910bbbe5868bb4603152196e842da2307b6367d"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/KuaiShouConnector.xcframework.zip",
            checksum: "9fb680659747828468b58bd54157a5954a4e18327306a61f846b070bbbb3a14f"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/MOBFoundation.xcframework.zip",
            checksum: "4a49e5a254f61251a7de24efb353b3c2a676222580df6fbe8735cf224350a5be"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/OneSDKAccount.xcframework.zip",
            checksum: "047c2fd2c418b67868c3e087152a075063435441dbe8d5f8884ccc3390278010"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/OnesdkBaitianFramework.xcframework.zip",
            checksum: "4070596403466237868c5079c213f5b60504d72551c2ca308ae874098966a85b"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/OneSDKCommon.xcframework.zip",
            checksum: "1488f58e1c04de924c4e96543845984f18464180353bfecc25372131ebd45c63"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/OneSDKGravityEngine.xcframework.zip",
            checksum: "19158c7233ff7619d0a590a40cc63e3af3370b5ef65261a6324b08b8772f22f6"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "6ed503ddc544c828e758ebd95107f7db4e15427f59dfc866b1436306412a87cb"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/OtherPartySDKFramework.xcframework.zip",
            checksum: "f6264b4e4a2e2ea70e25e5c873ecd995bac01e0d1d875703ab01d74e0ac5b33f"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/QQConnector.xcframework.zip",
            checksum: "5dc7f8daf2db03d78597db0cbb4e6195dc95dc274c383054e5fe327c7323d4a9"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/ShareSDK.xcframework.zip",
            checksum: "28d36eb9f33470e0bae80c0c8e5215e2cd4b4b81f55e31d118d905d8cd849077"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/ShareSDKConfigFile.xcframework.zip",
            checksum: "a66675031c9e6aa0a14f998bc94e60bfe1a29796168c43efabe533cc37f4b5ac"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/ShareSDKConnector.xcframework.zip",
            checksum: "36ddb0d02a73ea498fb6c55da492d3dc6d6f0b3813329df3b296db7bffec7b42"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/ShareSDKExtension.xcframework.zip",
            checksum: "5f2277c86a88ce2ef949a8239d3b986ee2cd5af447d446fc49d191044767e29e"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/ShareSDKUI.xcframework.zip",
            checksum: "5005cb7223f9c3ddf0c06719c84a964a2edc2ddd1e55943c87d737980e38889f"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/SinaWeiboConnector.xcframework.zip",
            checksum: "b4b99ac45eb2b25c0841cce86a9ef95485e0bdcca525b6d4cbbf44031a55ef77"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/tapsdkcorecpp.xcframework.zip",
            checksum: "c2857a5e76f0d3d4ac5fad4e1dd3677508c66aa69fbb7d320e9df4ead15edfd9"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "40b7cc04325c5f5e2da679030b08a5fae2c718b92964391c5ef2b46015bb1cba"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/TapTapCoreSDK.xcframework.zip",
            checksum: "412d0745b5fe85fcaf343a06928ac36bf00372882d1f49b5f28b004436d8aa42"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/TapTapGidSDK.xcframework.zip",
            checksum: "c1a8e85b030d3ed5eb0b0b774e2b8905426904e4965c821e694ac5c80fd7030b"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/TapTapLoginSDK.xcframework.zip",
            checksum: "c2a312edd898d7b9433f439267595ffc95cfcffe1585a970951520e82bffd039"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/TapTapNetworkSDK.xcframework.zip",
            checksum: "934a2edeb3e0fee6e0c12f517e8a7115f43c887be39b3f3f1af40450848bdf94"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "b355ed990486d5291f8778f888de67ee2fe1c3149cfe06125e8e5a4dc3a0ea55"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/TapTapShareSDK.xcframework.zip",
            checksum: "08cf8da2fbd130e9b98d004c9132fde6676c55ce8858b1ba7b7908061c3940d6"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/TencentOpenAPI.xcframework.zip",
            checksum: "7c8740c3d514636fabb905cde62fc632308afa3f764c82f9475c338bfe97811e"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/THEMISLite.xcframework.zip",
            checksum: "6b16eb29da845779a6607363dc798238ebd555d14bdb291bb2892d009b0ab9cd"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/UnitySDKManager.xcframework.zip",
            checksum: "e0aa81f8ada7f41ad9af1db482f4a98da97f62a34b262c563b0a8e58596201f2"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/WechatConnector.xcframework.zip",
            checksum: "748cf60ed6ad58deafaa4dcf57a914aba7ec62356642485fb6d3eae46696dfaa"
        ),
        .binaryTarget(
            name: "WechatOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/WechatOpenSDK.xcframework.zip",
            checksum: "fba38a5e12a99ce779d0137f3785b3fe44b56e7c90c2f55851ae105aeb3c975c"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/XHSConnector.xcframework.zip",
            checksum: "b57cafed6a6f30b8888361e1e2cba849627d3d6227b65d677961a43ab8a3b723"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "cd69651774eff2c5a432ca87a7fea307449f5cd2347ea744e904dfea5ca6e118"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/YTXMonitor.xcframework.zip",
            checksum: "a1bd00b671add160c0a2269e96928b22708bc99e584ef56c340d77651b01b44e"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1543835/YTXOperators.xcframework.zip",
            checksum: "69e86c1d007379835926020d2e4906798943de81977d24d7c7a3857c362ed84b"
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
