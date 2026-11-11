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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/ATAuthSDK.xcframework.zip",
            checksum: "baee9427e54f001644b240adcd22cc341f27e567e39254c6eea5f601e36abd0f"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/DouyinConnector.xcframework.zip",
            checksum: "f05fdbc31b0f8c90b08243a8e2df6ec69bcd0744c4d101b4d0b826536b91eb05"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/DouyinOpenSDK.xcframework.zip",
            checksum: "bb26c803b7ba49a867b6239ef0deb84d53852c97416befe290afbc739170c686"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/FlyVerifyCSDK.xcframework.zip",
            checksum: "509dff6e8e0b48abc2f8b55545e01add1fca86766ba50a6da6d1e4cacf7105a8"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/FMDB.xcframework.zip",
            checksum: "94dadd9ff1254566b1e12cc18c141c221cff960e240d98e90b9058acd402a9e1"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/GravityEngineSDK.xcframework.zip",
            checksum: "380afd6eb527883cf5688b4790cec3a6f14f871a1ec8f8614945cdb0d8b4d5bf"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/KuaiShouConnector.xcframework.zip",
            checksum: "85f18d218da30812ee3f25145fdcbc9c72963dd2d12c7b0ae978566fb07c90fb"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/MOBFoundation.xcframework.zip",
            checksum: "5f7e1416fe392f7112ea797551cda4dbb56c1f2d925714e754cdbb726c790eb7"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/OneSDKAccount.xcframework.zip",
            checksum: "de72520caafddc972c1a62e6cf29d031d1aefbb11d34150b4e799fca6e917c3c"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/OnesdkBaitianFramework.xcframework.zip",
            checksum: "84594c00bbc7fa1fee21ce03194b662e584d55b02d3c8f9e6779423ec587edcd"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/OneSDKCommon.xcframework.zip",
            checksum: "15bbb39c06fb411128d13bdf07875d88392a7ed0e8c539b8ba8bb0d4fd208196"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/OneSDKGravityEngine.xcframework.zip",
            checksum: "08b6d4a996127aab3041a6e06ea0d3ee0ef1e7b513704719bb8856e1f43db0eb"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "dbe8ae69e9ebf359b6c63050240537552f5db1c29755228c16841b114f73fa9e"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/OtherPartySDKFramework.xcframework.zip",
            checksum: "2353f2ea515602392a2279360c6697cdcf2f5baf6356b0066081df4d431881d3"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/QQConnector.xcframework.zip",
            checksum: "49904fce00b6bb206fed82e972ad898872b8245e0e1f1abf83542d702d5107fc"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/ShareSDK.xcframework.zip",
            checksum: "cd6f010c3cc05460f510f471a8ca32337174cbb83225af1a4ae29105dfadffb6"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/ShareSDKConfigFile.xcframework.zip",
            checksum: "359b643246825b9503e88b5e19f82076ac731853c4827241f96984e29c2608d6"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/ShareSDKConnector.xcframework.zip",
            checksum: "1f40220cc7fe5b3228e69d71f16fb66d40ebdd17f813fc10cbc0f52042e786bd"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/ShareSDKExtension.xcframework.zip",
            checksum: "2f466e85eb6adc98a19f7f2c656df50e9a98d4752a18c12e1dfbcd87d0b07dfc"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/ShareSDKUI.xcframework.zip",
            checksum: "9aa4acfa86ee5e6494c91923cf07433f86baf2074b289fa58fb478f2ca47efe5"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/SinaWeiboConnector.xcframework.zip",
            checksum: "6a6d68c501ea03474e4d36b5277a8a6f09f554b443f15b557e17982e13f14768"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/tapsdkcorecpp.xcframework.zip",
            checksum: "e98d5286efd0ce5c0880922a63ed0665a88fbb9107077a074d875a04d246136d"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "b19dc93480b54b403573a87070735641b1c78c71a504e1fe8bfbd16dd930bc7a"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/TapTapCoreSDK.xcframework.zip",
            checksum: "147727e1bc22d28a6888687dce56ff24145a5dcdea0b95cfb845d36681b1a423"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/TapTapGidSDK.xcframework.zip",
            checksum: "2306564a544c02002b9add46dcf1eeb7ec2885f55942088ed09eb66dbe9172d3"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/TapTapLoginSDK.xcframework.zip",
            checksum: "7039be03f42cd693a62a1b91250f9a01b54c9beca2cb79b81c542deeda7b34f8"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/TapTapNetworkSDK.xcframework.zip",
            checksum: "d7d4e7d45759bda5ae1ce84e4d996983abc634e77931cbcdba153500d96feb78"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "63fb725e39b08d5c59a051706a631f06a84bc85b4efa772729a06969686e1db5"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/TapTapShareSDK.xcframework.zip",
            checksum: "6109e767647f11863fc41312d3e03da90a94317eeed1022c4794301cc20a5c2d"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/TencentOpenAPI.xcframework.zip",
            checksum: "023f83af570e994af8cf3d8e0ea47737008e37ba6a2f0bcf129795ab332f4b21"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/THEMISLite.xcframework.zip",
            checksum: "3271b120294d65030c9b5d4c73f8a278af2b1b114f8671c1567dc26f710ad5fd"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/UnitySDKManager.xcframework.zip",
            checksum: "e35df166e39d622ac40b73a7e2f04f4cd1cbe167efd75d4a71d964cf28cf2e5b"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/WechatConnector.xcframework.zip",
            checksum: "9ac128d2dfefc2c8b7f6ee06a8c388f1490edfddfa742b13e03a4a0a01db12e0"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/XHSConnector.xcframework.zip",
            checksum: "ccf309bb7f02769164ef1761d10244b7bf079a43cc015f3939e5142b1adad10e"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "0684e0fc1a01783fcd4078b1044f16bd484f950b0d13bb79c72ac7ecc223aa9b"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/YTXMonitor.xcframework.zip",
            checksum: "29809a2a28e54baa9e070498beff3a8b878ed262c6d9920c4d2ca9cbfe9479bf"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.4-dev-1565021/YTXOperators.xcframework.zip",
            checksum: "4df2e1d7fcfe901f5c3c7a77034429db68d009097be5f5a64a75a3b1cdee9f15"
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
