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
                .byName(name: "WechatConnector"),
                .byName(name: "XHSConnector"),
                .byName(name: "XiaoHongShuOpenSDK"),
                .byName(name: "YTXMonitor"),
                .byName(name: "YTXOperators"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/ATAuthSDK.xcframework.zip",
            checksum: "1671a21afe5ae6eebeb7b558311bc21bb8189c0d9f7ed8592eefd2e0a25afa3c"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/Bugly.xcframework.zip",
            checksum: "5fa9bfbf8fa75375b6c5d70b9d938b76ad03af91239b9db0a562a964965fd7ee"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/DouyinConnector.xcframework.zip",
            checksum: "d5a37b28a076d5afeed1663b0a7c59b7a4677fe29deff9ba85cb843c8277ec15"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/DouyinOpenSDK.xcframework.zip",
            checksum: "73279d673e14b68633bb43fde9c8f44c7b54094722033efe86eb3cc98f9109b4"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/FlyVerifyCSDK.xcframework.zip",
            checksum: "4154c64f5cafe153e604700d58c5080bb70e5b5b15b574349a9af7793206be6f"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/FMDB.xcframework.zip",
            checksum: "c0a3105fbce5f71598bc5b5bbe8fe3addc68ae20a972d6e3dd302c86a7693f0b"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/GravityEngineSDK.xcframework.zip",
            checksum: "835a4db67b9a21679152256c3d0fa81343c82153039faed15f1d7add94dd07f8"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/KuaiShouConnector.xcframework.zip",
            checksum: "b4af702988f3daa78ad43579c61f274e9ecbd4de6fce53ddba5a1e8ce064de03"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/MOBFoundation.xcframework.zip",
            checksum: "6ecb094775a5c69098c3b7a24d0fad3efa65d8f2fa9218578ec71575d8ac3828"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/OneSDKAccount.xcframework.zip",
            checksum: "688221c30099ead114ba4252bae985b8860c4deff28686e4f453e2e562203658"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/OnesdkBaitianFramework.xcframework.zip",
            checksum: "7d23a5918c052b1a66fe40c7fb0c5c12a34f963deaac3ad1b973a35c5c02e6a1"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/OneSDKCommon.xcframework.zip",
            checksum: "53aa5c88bfcc4856738021a39123272392e853733e2ed6f5c237a9793131a033"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/OneSDKGravityEngine.xcframework.zip",
            checksum: "187087e790bcabb6fe1c9a552154e6c31c5fb914f61220e810681f3fd1549181"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "13ac702bb2971a43d04d0f19e7b30196b263989c7feae0c882b560d60357e889"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/OtherPartySDKFramework.xcframework.zip",
            checksum: "ea2eab7905b2a20738639939d586b595b3b66a7e930d776b9393e9a070de3a74"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/QQConnector.xcframework.zip",
            checksum: "ff65b38f21956321126abc68ac8848fa2fd06dcd36196ca01505c1c53d51233f"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/ShareSDK.xcframework.zip",
            checksum: "b79b30c905a7802bf4c235da9a80df1b54a8af16b65f18edd5d83cac18c40dd3"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/ShareSDKConfigFile.xcframework.zip",
            checksum: "f10410bcdf0a3a87af8edbbd964231a1bd2b86b391a10e44fcb54d3d66c675ce"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/ShareSDKConnector.xcframework.zip",
            checksum: "05516ccd43e587a51ac6b171a651cdbf4c64633be6fb138a3f5b4cfc59c72fab"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/ShareSDKExtension.xcframework.zip",
            checksum: "642cba58dfd2600e3ee96e5bbd14ca4727baf2f8ade0de51443e48130f37839e"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/ShareSDKUI.xcframework.zip",
            checksum: "41a24b871a9ef543eea506aad56b3781cb5348490c5336ccc61ec479ae6568a5"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/SinaWeiboConnector.xcframework.zip",
            checksum: "9916e01c89671f479fdc21dac32a90fa95813b7cbe61fc932e7b38d8250811b2"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/tapsdkcorecpp.xcframework.zip",
            checksum: "17b25034089af9f422e4d8093f9ba4074dd41aef5b699f52f39390cf1e2a02b9"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "0b7f6a71588be4eff7af65354ca40c47d929ba45e062651a82e5451d518afccd"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/TapTapCoreSDK.xcframework.zip",
            checksum: "4a7ba2e16df55a66b628104ab316774a344d3fe92f14d2f4b958309f23448ffd"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/TapTapGidSDK.xcframework.zip",
            checksum: "2d39390cc3d9ba029ff66f20134a17cc4ed4c0a570035ab1ca431c84a9ea7a30"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/TapTapLoginSDK.xcframework.zip",
            checksum: "ac70493dd1d02094dea77a9558c5ed29ef663521f37d5c54d414850bf3bca400"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/TapTapNetworkSDK.xcframework.zip",
            checksum: "e4a7f62834b7cc6826d55f893a80a28bda0c4f3a601d2b05b8551595d78df12f"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "b740b34e04954f34982694ca659db92e46fcee04a6e50026d6ec9206bef31a2a"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/TapTapShareSDK.xcframework.zip",
            checksum: "caa7397ae233757d61431d41b0ff1e5962c68a84c239fc78beff9080c421b687"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/TencentOpenAPI.xcframework.zip",
            checksum: "5d41e750a9e3be362aa089f10cea0abb818113f64526abc94ecca8869ffa6353"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/THEMISLite.xcframework.zip",
            checksum: "d4d399768895b8a3eb03a164331347d12bff3f4d70b4f148a503f92e9906fb0b"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/WechatConnector.xcframework.zip",
            checksum: "bd02dcb75dc5723b0fb005a1e05ff1fae68d56382c6bdf60949f59574201c617"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/XHSConnector.xcframework.zip",
            checksum: "942f2f4fd947a777e6f0a6821bc0185219c458c35bfdf4e8412dcfc53173f23f"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "7368d3b8c7a67f227183f093a78c047057c9111ed3e081c4c06fb8cacbd94b46"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/YTXMonitor.xcframework.zip",
            checksum: "470de10d599cabebd40e498f8d4d54daa61fb85113943c3dc303c2476966c01d"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.5/YTXOperators.xcframework.zip",
            checksum: "ab1e53476d59eb6c4764e9f5aad779c3e7cc031858aea4fb1bd31caf600c6332"
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
