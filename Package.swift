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
    dependencies: [
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/ATAuthSDK.xcframework.zip",
            checksum: "58d74e5e8a2f987d15ddbedd150d41cfe5954a6e52ac86907eab9763856cc64c"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/Bugly.xcframework.zip",
            checksum: "46032107ae9fdbaf66b5d508667ef362404b57f0ffccea7fd76a7194e52e3f29"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/DouyinConnector.xcframework.zip",
            checksum: "e9206f4611a809c24febac028564c0fabb742b064c191477649f0df3aa1f61bf"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/DouyinOpenSDK.xcframework.zip",
            checksum: "def5ad7a15747729f95cc4acc69a31685ec4609d662bf19451c67b4a39ae99cd"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/FMDB.xcframework.zip",
            checksum: "5ed1ffb0439058418f62f93cb21ca83da115a3e9beb32aee3136d944908d7391"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/FlyVerifyCSDK.xcframework.zip",
            checksum: "c00cec6b130e8b683781be581e87ee751b6b7cb9b563b018de1247ff40f96f0f"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/GravityEngineSDK.xcframework.zip",
            checksum: "c81d3d900115e5964f955c57ff5480a3604f51e33eed87ab5466e6afe07af5eb"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/KuaiShouConnector.xcframework.zip",
            checksum: "c4351ee917c4fdb58d10f6597dc8cb71d84f4b3f528f44249378a7b0d0762a23"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/MOBFoundation.xcframework.zip",
            checksum: "717a2f55be4b1a5e02a55c3214906ade466780bf6410260d3cb50c12cb938b26"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/OneSDKAccount.xcframework.zip",
            checksum: "004046848340b3733807b57caffd9441fd91f4a5eadd84735fa02ada34fe098a"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/OneSDKCommon.xcframework.zip",
            checksum: "c12870a03b7aa092316c3fb30a4daf55fd1f767dad6d668bfc7810ce3474daf3"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/OneSDKGravityEngine.xcframework.zip",
            checksum: "8cecf87044ebd44db00f770b3357dd55876a45c9b6aab66a2cbbae9759b42488"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "c834924f64c2f7d44792ff60db888dbcf9fcec030a7705c636355599c2d5ee9f"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/OnesdkBaitianFramework.xcframework.zip",
            checksum: "fbe9ea181df12b1b89e965f96f6944e88f8654c10e11e7c858d9d5d47d9337a1"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/OtherPartySDKFramework.xcframework.zip",
            checksum: "f80c7701be92022e9ead6d21190ca7b2ce769a6e4101817e0ac0843334dd9ee2"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/QQConnector.xcframework.zip",
            checksum: "e6147d8936da7f10e4a60194c62fa640b4aec231160c6e21205f01ceb93fe2e8"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/ShareSDK.xcframework.zip",
            checksum: "a2c480a7b05e07eca0eef2cdd9cf92f77258a5f64fb0fbcfc96f0413190aa2cd"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/ShareSDKConfigFile.xcframework.zip",
            checksum: "53577aa55dacd4f9e2460ebbba64c7023ac478da4db0d51b04b522e8bbdecc42"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/ShareSDKConnector.xcframework.zip",
            checksum: "89e93671d3265858745873e3dd32cd211d720e85a4ef40a438ffb8c105f6702d"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/ShareSDKExtension.xcframework.zip",
            checksum: "d668c5dbaea8294ecf2b6c036f75e3045739de04d048c80618d1731256632f4e"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/ShareSDKUI.xcframework.zip",
            checksum: "d37f30aa6c359b8c6145ea3fce78dbf38ab59ab60a1d5b77b9697fdfd3170e49"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/SinaWeiboConnector.xcframework.zip",
            checksum: "e207d33cd961178b8e7b7805625b19c003484d1e9a0f461bfe5ec49f12cfeaa2"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/THEMISLite.xcframework.zip",
            checksum: "2234c91ee37b77039d9b98e15b7ef05f18bb1679b92040cf2327aa956ba5ab68"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "80af333aa74755c74972e9815cd8a0eaebd9859f18dcffdd941f447409d1316f"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/TapTapCoreSDK.xcframework.zip",
            checksum: "a4585a0876dd9e1f26c7da24a41d57c0c0174356b0c6b1d7d650ffb6940e389b"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/TapTapGidSDK.xcframework.zip",
            checksum: "f7019a134c3faf3ca74b13784b9e330869cf7edf6e4cbd7e59c84ed8e6f0a78e"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/TapTapLoginSDK.xcframework.zip",
            checksum: "e04cf87d7c0fa704a977da1f719e84dc95890c45d21c028331f18013b647958c"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/TapTapNetworkSDK.xcframework.zip",
            checksum: "b004af6c6db7eb55be00fd3a662e459aad07bbb8fef146aa0e3babcb2d7f2201"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "33a082dbdb3780c86cda0119cf4f145a6d76260f9cb6652790fc0ab40b3538be"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/TapTapShareSDK.xcframework.zip",
            checksum: "f98797d35ec5611258185695251058ad447800a643a634b79a4a8705d8db5e7e"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/TencentOpenAPI.xcframework.zip",
            checksum: "a07ef0e45bfe2ddecbe2b688941ab91f80224f9bedc632fd3c90ea5113e4c990"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/WechatConnector.xcframework.zip",
            checksum: "a50ab9f7e224c982232f15f59384e583ab1f506504b144eae51945e1d342a72f"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/XHSConnector.xcframework.zip",
            checksum: "2586b2b97224a46aae76fff16bf9aaa3e115e9a186c6fe9e33bacd61604ea597"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "1e6724dad024249d63a30480822c2505d908927b85b5e4091739c054f624360f"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/YTXMonitor.xcframework.zip",
            checksum: "11df9496c0951fbe8c6d3c8ddd151e5c80d700ecba5861e1227e2dac4effd37b"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/YTXOperators.xcframework.zip",
            checksum: "500ddc9ecbb36ca83cfe0dea2cdcbbb3752062928666ccf55e6af4124f5f774b"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1396609/tapsdkcorecpp.xcframework.zip",
            checksum: "c23d4fb05ffeb5885ee8b7249a8c68306d2536536e0c002707c9263c80775e44"
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
