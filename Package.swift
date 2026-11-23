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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/ATAuthSDK.xcframework.zip",
            checksum: "ca0c6180da1dec3a6cf317e2f480e5c58759a30360e151a7f47b189719ddec9a"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/DouyinConnector.xcframework.zip",
            checksum: "f2518492ea14bf42b752bc998a2ba37b760ac89b1d8edd5694f7f2412c8e8c91"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/DouyinOpenSDK.xcframework.zip",
            checksum: "86ea8386b8762435301ec3715aa4441ea407f2742d91e889258fbeb5bfb9ed7a"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/FlyVerifyCSDK.xcframework.zip",
            checksum: "df73c6b5a3077b427c57168bc51a93207f747f04420aab88712294a1c08afbea"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/FMDB.xcframework.zip",
            checksum: "30b7001ca37c980c2f25a31ab1ac4dbea7bfadb2a164652459a78c7885d0076e"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/GravityEngineSDK.xcframework.zip",
            checksum: "09ef730a527e2f607c2875c19cf496df835972523bc70a1166de0c870747852f"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/KuaiShouConnector.xcframework.zip",
            checksum: "d99202e2b6955bb0f0c26ce2c4833723b295c29e8641023d204e1441c12d0c06"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/MOBFoundation.xcframework.zip",
            checksum: "7b5585127c20a9b92d3009ffc4b04e0c3b780b4469aa7e03c6cb19f29ec8411b"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/OneSDKAccount.xcframework.zip",
            checksum: "139f3f3b07746617e593949297845bfbae291eedb6e3df85fb86b0bf6ec2e161"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/OnesdkBaitianFramework.xcframework.zip",
            checksum: "6ee644583805f62b4bfcd71e2d8c2b62e3d3b928a1bb862a762823ef88676461"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/OneSDKCommon.xcframework.zip",
            checksum: "81d155fd0bb35940eb49bcb00da6771103c4943ff080fa94539ef6190581ba38"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/OneSDKGravityEngine.xcframework.zip",
            checksum: "40fe31ff9edc5c3ccf7b5ca46c8a22f6779df55154da3635183f758db190a2af"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "92589f7a2e52fa28f2f96c2c04519908447f82467d13c482ff8beb4f220f686e"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/OtherPartySDKFramework.xcframework.zip",
            checksum: "d470e452e9175395d782c57346a9198b826d63e12c884e95d12650915e37320e"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/QQConnector.xcframework.zip",
            checksum: "397b3f4b4c5db1ca88006524c55700d6d191035ebefc1bf1ab9159f930959ba7"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/ShareSDK.xcframework.zip",
            checksum: "6f6e9ed7432f36dd4e574215dd34b5a94d4e78825a3085e966f341513e20513d"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/ShareSDKConfigFile.xcframework.zip",
            checksum: "f9fc930977b224f04cdd07696d2ffaefc7709c772206a24ea9b74977f50a5208"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/ShareSDKConnector.xcframework.zip",
            checksum: "83601e672ca90702fbad5c3313ede2182d928ae44c8037067dbf2cbcbe8dfbae"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/ShareSDKExtension.xcframework.zip",
            checksum: "82aa89e470107a6c7bc96a8873a56aa2e85ca09caf2e25b5b0db81036403d6c1"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/ShareSDKUI.xcframework.zip",
            checksum: "0d7fc3ceb24e6a866c661b87e8971efd5408be740b17549b465f6165efcdb452"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/SinaWeiboConnector.xcframework.zip",
            checksum: "944dcdd2f1f64f13ad8f8627194b439bb1ac12a04c6a1602f4d765de2678b4c2"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/tapsdkcorecpp.xcframework.zip",
            checksum: "4c95379333aa6844aecbb4744ea237f5d7522f029e1bbb07a95ce1d3a118dae8"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "5fd4449d899cef3a9a803294f6196b831ce1624effc480b98b3e4946649a70ef"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/TapTapCoreSDK.xcframework.zip",
            checksum: "44a58963b3b4f99bcda38afaf8ff6d9dc15701a3a0683f80d4907e599fa844d9"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/TapTapGidSDK.xcframework.zip",
            checksum: "7f6b79906bb75d7f02b72b0713ed6324c976db61f86f44e8de7b2303dc091a7a"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/TapTapLoginSDK.xcframework.zip",
            checksum: "423a368dc94b8be3f0f8df3e3ff290c3b37d8fa93da3039902d1df2b5fc2c3ea"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/TapTapNetworkSDK.xcframework.zip",
            checksum: "acbea200255d5f01f3ee7369cd30548f8ed058ec5934ca3471505dc2e7d9f20e"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "f5950e2853338bb13600306b18eca961b7ff9668650819ea0a0b780511e69b95"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/TapTapShareSDK.xcframework.zip",
            checksum: "f34937afaefb84dca7008a12ad550ccbd3b2421ac318e9e08ce889318a698162"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/TencentOpenAPI.xcframework.zip",
            checksum: "75e90df5798a9f9de350fcb34adcedbbb66af6b2cbf1397c475b0f39b53bcb6c"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/THEMISLite.xcframework.zip",
            checksum: "98750b56cddba8a5a463db7812a16796521eeb9b08ad879a4ca7d312b5879200"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/UnitySDKManager.xcframework.zip",
            checksum: "7728bf9f70bbf74c7de6de2d9a9930a2a8706ff1fcba271f7028c2a8cffb7edf"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/WechatConnector.xcframework.zip",
            checksum: "1706a1a0c723b23dbc467ae1106a89a5c93172082e21720e190dbabe563365fa"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/XHSConnector.xcframework.zip",
            checksum: "3f8c5bef289562907e02cea0e487c6ec668bc2adfd9ce06576a9fa3548ff7cad"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "df8a093ae2b4704fdcb6b33ff6c1b186be3591e6304c762a494842bc418a471b"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/YTXMonitor.xcframework.zip",
            checksum: "82a10496239b792cd362f210e4b4e1ae88206414a6d4b9c1a3f808cccd6f66b2"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1573945/YTXOperators.xcframework.zip",
            checksum: "a405eb6b8130adfa73c9098ab17c52f6fdcb4a4a027aa37b53b93003778a534c"
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
