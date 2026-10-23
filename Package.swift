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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/ATAuthSDK.xcframework.zip",
            checksum: "5c7c9a3b346bfa20fdd5ed17d9a9a9a2cf117d4e4a7bd7dce46b9a4b6421f980"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/DouyinConnector.xcframework.zip",
            checksum: "7b36d83fd9c87a72cd4d4fe3439b691292d4edd8ca5f90008679bbf59987f19a"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/DouyinOpenSDK.xcframework.zip",
            checksum: "3666a1abd54831915e2d25ead939438faae96ec5caa3e19ef31ce51d6554f218"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/FlyVerifyCSDK.xcframework.zip",
            checksum: "5f0d01b212fea11938325b4a30ab5101d616073caca4512e0d3adc03c34df4b4"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/FMDB.xcframework.zip",
            checksum: "53c9c4c20fad954ba6c5f5ae165e3d16548817c4fbe6d1859031ee30e62269e1"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/GravityEngineSDK.xcframework.zip",
            checksum: "391f0e89d71e3a57781bd9ff2e992c7c1342637eee0b901800d89e7e36bc4dd5"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/KuaiShouConnector.xcframework.zip",
            checksum: "f04e11910a18431d3e4c4456af66a034e2ee8f9d1fb7b6c366c03f2df0b1f1e8"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/MOBFoundation.xcframework.zip",
            checksum: "be9da3b70a028338fd6fbaa8128b2ebeae946b72b7e5dd7f1be061402a10e7d2"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/OneSDKAccount.xcframework.zip",
            checksum: "269b2e4463460b7b01b69a4f79ce59f2339dcaf862c4f00c7d4934fd4e61b36c"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/OnesdkBaitianFramework.xcframework.zip",
            checksum: "9a680a74a3ca98509e20f4c32825c329a04a6f9006ea11ab427560f0ad589321"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/OneSDKCommon.xcframework.zip",
            checksum: "5f26504c812506a6047341f523730813cbc431a19bd79725b9538101b102bca6"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/OneSDKGravityEngine.xcframework.zip",
            checksum: "fd3a893cf7d51e23e7514d11da95353cfb74681a6d89eb1ad859b8594cf59897"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "4ce559816dae4448d987b81469d520f07cb300ea02fc432e75589956a5d3d579"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/OtherPartySDKFramework.xcframework.zip",
            checksum: "02d12502c51f253400b653b269cd31aaddf2765b76d6efb4d5f463c3c56e1480"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/QQConnector.xcframework.zip",
            checksum: "f47e14748d64bd008b5efbb943a914cc26c42c8a2515719d5352a4a767553907"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/ShareSDK.xcframework.zip",
            checksum: "e76dc6e5ada3e822930b5daa945ca6e5701dc2027abd3ac2c8066c52d720c945"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/ShareSDKConfigFile.xcframework.zip",
            checksum: "aaa11fccfcb97b6a73dc5ad89d8c5f1ce97e51f1e8f4d747b571fff88954242d"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/ShareSDKConnector.xcframework.zip",
            checksum: "b921b8a3e07aaad5401ca293875ad1867abde09577b4d39d9f273a6fd37aed4f"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/ShareSDKExtension.xcframework.zip",
            checksum: "fe1ec057237f1754b5e6669d94cf55fe902d822c1c2b6252bbca8ae78e74c8c2"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/ShareSDKUI.xcframework.zip",
            checksum: "4974b6de22ed094b0bbacc53db9e62ceec65181be8d7a8f9b598515229de04a8"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/SinaWeiboConnector.xcframework.zip",
            checksum: "134aa54ff7b2e53683a08387604904d8b73e43e0a12884232906e796ddf43b94"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/tapsdkcorecpp.xcframework.zip",
            checksum: "9a728376c81dd6cbc2c9fce0830e0632d67a410ec7a65b44ae9e62140140a8f0"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "2ec13130b752fd02b658d00b00f58c140e78c6a9929ad3c520d5cfd0735b05b8"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/TapTapCoreSDK.xcframework.zip",
            checksum: "a99bf4e565260f2717352e599e814bd2943f7100b0d38ec38cab2da636f8bc4d"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/TapTapGidSDK.xcframework.zip",
            checksum: "142d71da17ebde5c9fee1d595e7a0f0a41e738912f025e7e6aa2de2fa12bc0d7"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/TapTapLoginSDK.xcframework.zip",
            checksum: "7a03c97467ebda1459b07b72ecccbc2ee0762a8ea398c0e6ba0a53b21b3c060c"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/TapTapNetworkSDK.xcframework.zip",
            checksum: "12e3bbe7259a930e626c0b949360268c5c6534f55daf13c818142024fe824904"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "217d550243b11d3b7f3e8b69b2c1c02633631d2f8df86773a4cf989f97728c71"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/TapTapShareSDK.xcframework.zip",
            checksum: "e72b2f8818ea992c8744ec29800bd6b47de5809918979098d591ed1caee380d7"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/TencentOpenAPI.xcframework.zip",
            checksum: "a442abe38d3b5b40b8a886aabfe4af3d83ea48315da2e73a6864bdf894d7f111"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/THEMISLite.xcframework.zip",
            checksum: "1d98552a5fb33852d9f54c1b361642aebc1c312d5d394d1d54ca8ec14c9d1953"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/UnitySDKManager.xcframework.zip",
            checksum: "9e80a23eb5a83b778a6ccafc8b626fd98c2b10bbeff26af5692ad6ca07fdb8d7"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/WechatConnector.xcframework.zip",
            checksum: "a3a07741f1981589855932c96c725453d5b7d53cfd4de5cc9b6e6c5a09bac554"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/XHSConnector.xcframework.zip",
            checksum: "a9489c102d47553488c45fbb2e381b0244096c45a3eb7fc7390ced9d0fd80f7d"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "1a833f977fdab2bdf40feb5d3ac85eb5f1212a3fdaee3f5a2367a20b9b153c53"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/YTXMonitor.xcframework.zip",
            checksum: "b5b92a348dc29fd5f2cccaeae3e1b06290e95ea6615a41b65f523407fcdf20a9"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552241/YTXOperators.xcframework.zip",
            checksum: "d96e7b79b686abf0e6a7f7b0bc73d942175a1d7c581c6344d7b1c0f3389b12ff"
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
