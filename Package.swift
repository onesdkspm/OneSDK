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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/ATAuthSDK.xcframework.zip",
            checksum: "57989328f45145e56ff3c4a5a52f926664969a14fe93001abf4bcd99e0ffb303"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/DouyinConnector.xcframework.zip",
            checksum: "833bbfc70114fabe0f88cf7aea89719603ccb113cf120682572aa41664984d44"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/DouyinOpenSDK.xcframework.zip",
            checksum: "5956024d719781877ef24be2cd6f77c6b31f7b56098a17aed2b6361b1ab95cec"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/FlyVerifyCSDK.xcframework.zip",
            checksum: "299242e8629f24dc6a3c8abf0bc1a403da5091f842c34fba654a0c0b842616ea"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/FMDB.xcframework.zip",
            checksum: "fd18a22acfc8632f01233235412d8885a63b84d28f2e650c9a951643686d941f"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/KuaiShouConnector.xcframework.zip",
            checksum: "17aca10ee0a85056f5ea9a292f2b177c6ab518183e40da091dbac53b56bb2a67"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/MOBFoundation.xcframework.zip",
            checksum: "71a37e86777e6fc1a3bc1a7ff80ac9b5ca36ee7c76230a187e1a75a0e81c6939"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/OneSDKAccount.xcframework.zip",
            checksum: "98c45fb7043996e120b6bca9fe080b4189b193d070083623b1cae2cf591197c1"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/OnesdkBaitianFramework.xcframework.zip",
            checksum: "d91fd9fbbf714494d32ec569c6962bfd79e046e23c024153a82cfe89061b4c4e"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/OneSDKCommon.xcframework.zip",
            checksum: "41a69cbe93eaf2771712b06b567a0769d9eae9135c7bd19005fcd4fb71db0e2a"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/OneSDKGravityEngine.xcframework.zip",
            checksum: "ef373e6608e7c9a3fd720e9d046a7130e5f9b67d0ad55709a4c8e12cfd1eb004"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "2037471f440d3ada4e319a1e00065623130fa5c4bb210c8b6e130b2493918e1d"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/OtherPartySDKFramework.xcframework.zip",
            checksum: "eb97468b9833d0d28a70435e0f7d80d7f01ebc378eb8b2a5771fe60f6b711e54"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/QQConnector.xcframework.zip",
            checksum: "0ebafad63e14437b0c246883bc5dd27a44ddaeff9104787780f4b83cc1f71fe8"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/ShareSDK.xcframework.zip",
            checksum: "2f172be4e4fd9ad8f634b9d8d69ed7222172afaec72c691b7add11a9ced7dda5"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/ShareSDKConfigFile.xcframework.zip",
            checksum: "f3e737ab79615ace23963caedbb80cb58734beb9b045fbb4499ea9bf5d3361b3"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/ShareSDKConnector.xcframework.zip",
            checksum: "b94955e69db9db9b593830bf0271215c321b4b021130e87cf0656af513826692"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/ShareSDKExtension.xcframework.zip",
            checksum: "c97d8d71da895865b6858897cbb17a85846dc565fdf9e1904ac7559f90f1d6f4"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/ShareSDKUI.xcframework.zip",
            checksum: "5434fcd00b0f32a7675f41f5fd657497bf0efed77feb5fa0a4d33125f2a02cdb"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/SinaWeiboConnector.xcframework.zip",
            checksum: "0ad26c749d6ca73920a9edf045d1db6e0cc22888ce2382135f497e8d42335dcb"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/tapsdkcorecpp.xcframework.zip",
            checksum: "1fa9d059c1b00f24b260b13f044299da2f78c47c78b16bae09c617130cfcf0cf"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "68b70e2960c2ea06b0189010b6b1a77a5ebb1c3a773be024e9f2f4b10f45a3e4"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/TapTapCoreSDK.xcframework.zip",
            checksum: "dba74b05d6777fa1ed4750a52e410cd62ec1ac7792753f4bf0d9ebf60ad8ac7e"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/TapTapGidSDK.xcframework.zip",
            checksum: "47b57bcfe1eba1bf328b4e5c158db7e7bbc4a95c9a808521bfa5b649595d5385"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/TapTapLoginSDK.xcframework.zip",
            checksum: "562183a4924e774d633321132703ee4f18c0ec3c9d6b0508500e4092957d7b46"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/TapTapNetworkSDK.xcframework.zip",
            checksum: "a9628871b0ae6e32a7e46fc35c8866928c7ff18b746ac3feca39f9e3d16ca646"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "974690ef926212fa81904346ead7321988c59d4b641de7d1ae8cc89c6c6ecfa4"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/TapTapShareSDK.xcframework.zip",
            checksum: "654630aba13ad4abaca8c8fa8aa5b3489e9f3b029f61dd054555957bea002ee4"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/TencentOpenAPI.xcframework.zip",
            checksum: "1db395289ed97611f2e47eb894c919f440d99f5ec94d4f1026c97d1733156ee4"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/THEMISLite.xcframework.zip",
            checksum: "1221fac5fb784087eef8850a593d0e4655871ddb6e48b750def1632c09e47be1"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/UnitySDKManager.xcframework.zip",
            checksum: "3bc3076c691bf8b629c8b16f909e050461177b8a983f11b8f10a04fa1b45776f"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/WechatConnector.xcframework.zip",
            checksum: "3da73bd72b5bda2ba81518883782c7c118d25847d5fc516d8beb197066179db8"
        ),
        .binaryTarget(
            name: "WechatOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/WechatOpenSDK.xcframework.zip",
            checksum: "9430605415a338b4aeb307f8b3c9b0e2aae47b98533f1647324e2f28e284c214"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/XHSConnector.xcframework.zip",
            checksum: "53c3b1709c2a44fce109a5a5f795329c01848b834e77a231db8c4ae176956bd3"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "25037040043481bc78aae24d1462840fb8aad0e9ebcb29968222b46a4a53dc3f"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/YTXMonitor.xcframework.zip",
            checksum: "1a85279231e97a8d686caf40d80b729855f149b5a632159822495233da6e8c6f"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1536052/YTXOperators.xcframework.zip",
            checksum: "ab5bae3daa36dea50de4224df624d4377574ab33e6f004410c1454b3a657e708"
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
