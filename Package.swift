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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/ATAuthSDK.xcframework.zip",
            checksum: "935d14f146e86dbf647801cc6f7ca3905127e5254b68abb3573a3f20a17c6c03"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/Bugly.xcframework.zip",
            checksum: "c4bd272e598ea4dfbcda498a863507d7cd5fa3a86118319a156ae60b4be03cd1"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/DouyinConnector.xcframework.zip",
            checksum: "905046f35752584793527588bf4b0e216eba8735e60b334da62fbab75dae7916"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/DouyinOpenSDK.xcframework.zip",
            checksum: "76fb268ecfd43399a7aaa8417e5ff2c9ed9a982cb16154230f406786df6ecd93"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/FMDB.xcframework.zip",
            checksum: "a2ef32531c726c7147201f2ec8ec50bf791a24909a6e57ba5505a71c122cb67f"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/FlyVerifyCSDK.xcframework.zip",
            checksum: "4d0b1410724dfa63bf3ffe79888a0fd181217c462b7142a8ccbcf7faa122a353"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/GravityEngineSDK.xcframework.zip",
            checksum: "74f46531540eec04c04fa0129a904b874a61172091562c11d8afded74d5d142f"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/KuaiShouConnector.xcframework.zip",
            checksum: "2dbdf3077a9fde864f5153181e31704011f1cbf726c94a5ca56403906846effe"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/MOBFoundation.xcframework.zip",
            checksum: "5f65ebf22fbe6b03b908f54753f8787d4ac341df1aae4e7759b258191e110dbd"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/OneSDKAccount.xcframework.zip",
            checksum: "b2a2ee2b88671d759d8d2b1d7b5526083de6e332179cd43b7d014ab557226598"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/OneSDKCommon.xcframework.zip",
            checksum: "bf6b90a07a4c396549d61a560ff729ee869528fbcb05402a7b4b8baa0b53c607"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/OneSDKGravityEngine.xcframework.zip",
            checksum: "abbdd5d7fd46d1d0972590bf277f338bb81ff77a5e8da7ce4749161839ab413b"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "abdb56da67f74897466c0d6422b47b014225fd82364e67c5bda7a17cc7307cf7"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/OnesdkBaitianFramework.xcframework.zip",
            checksum: "86d68114d5d95c5719549b4f77feb9c6c54c4ff15634dbfb7da03aa9e543fc7c"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/OtherPartySDKFramework.xcframework.zip",
            checksum: "82d93af96a6248f4c4e088a2c772ac1f04838f01e975371e6aca9259636dea1e"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/QQConnector.xcframework.zip",
            checksum: "f5c2c1cc224a763caf144be293fa0b2fb3a4373fc48fde13a9e11dfda3808c11"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/ShareSDK.xcframework.zip",
            checksum: "f900d444838bf4201f739bcd0cf30aecbbf918d6ae863ce43a319bf409b5bd62"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/ShareSDKConfigFile.xcframework.zip",
            checksum: "eb13e2801a17a244519b5c4c27823cc444ec2465d3da412a037d556d23c87040"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/ShareSDKConnector.xcframework.zip",
            checksum: "3b255141d27f3a7ac0d9c3d3b8159e19a48b47323cbee6604b553d47177b344f"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/ShareSDKExtension.xcframework.zip",
            checksum: "6e770622d9142c3c38e31ea1b040d80d7cce0974042bf308b3bcbdf5d706a262"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/ShareSDKUI.xcframework.zip",
            checksum: "f1c283fd9adb8a344601e5dde2ee463f593e98e66e572a7fd6bfa34aab1cade5"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/SinaWeiboConnector.xcframework.zip",
            checksum: "4304eeeec0b86f69a27dbc5b7a39002e1e5f041a2d87e306db043e6f23985e28"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/THEMISLite.xcframework.zip",
            checksum: "4054753ebec50a39961faeac04075f43caec492bd6ee7dc05fe65a1bfb732fba"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "1f61ffa4acb42f336650c2e2d34a66c5c1d8a6620eaf38b70e764afdd225b201"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/TapTapCoreSDK.xcframework.zip",
            checksum: "31255e83dde92a4b8e10cc982d675b9e9b8b2d47d8b48aef8fddaaf967473edf"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/TapTapGidSDK.xcframework.zip",
            checksum: "faa4c0c83583a94bd01c53a5dfb9d02caff53034582ce016c6b8aa0067f39a79"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/TapTapLoginSDK.xcframework.zip",
            checksum: "ca4f02c045577a772300b41d49a4203dab449ecd33fbb486daa9e7a57476b79a"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/TapTapNetworkSDK.xcframework.zip",
            checksum: "2f7f970004efaef4fc7f854596cbd5357d7e51fdaf9991dab9dd03ca7f729bef"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "e1b0b76757d52f33182656f999c5fd1331bf1fdbc698f2458ece2677de3da129"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/TapTapShareSDK.xcframework.zip",
            checksum: "c5a9f66a9d1b97c56a776b998c31149e21d6b4684d3dcf74d304fdeb2ac5e5ed"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/TencentOpenAPI.xcframework.zip",
            checksum: "0fc1a0a82d079185e1d60e714ca54e6e65784d245c2b0e99c82347d8d869b6ce"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/WechatConnector.xcframework.zip",
            checksum: "90b86f3e5d6b95d14f3af546aa983c62522a6c13b2abb3a953220f253dbbe70e"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/XHSConnector.xcframework.zip",
            checksum: "1003c93db3ebc8c8035313c65d0ffe33e6d87b0d28e301dd77bd8fa0ad0d3c4a"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "8442ab4a33a8c3df7448d308f2bd4a018dd3eca8d8b78105cfc29d780fd78906"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/YTXMonitor.xcframework.zip",
            checksum: "9cde9a9fc482cfca9bc4fa6473f3627697c9b95301a32703986bf81c4f571bee"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/YTXOperators.xcframework.zip",
            checksum: "393a7aad4a1243edcb67ba1b7e35692636424ccceb3bec149423edd8770f5c69"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.2/tapsdkcorecpp.xcframework.zip",
            checksum: "c6188ddb0f3c2c4c59cb0eda01e0f1bd58a131e0d95251deada489dc581b979d"
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
