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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/ATAuthSDK.xcframework.zip",
            checksum: "ba3236e7a037f44d8efbda8b640918469e30827b4b72f331b7e344180b4b69fc"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/Bugly.xcframework.zip",
            checksum: "605421762c0f2d8d6c6d6c44c2b43a2bd992cb1a66a5126174e5e302cbb6b7f2"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/DouyinConnector.xcframework.zip",
            checksum: "003cdb005e71a89186d4f0defee6bec737bc28165af885664d695acfdba7e56c"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/DouyinOpenSDK.xcframework.zip",
            checksum: "dce1550d7a9078e41fc531d9355d4bfdacaf4b955c87cce85cd485ddc9d9c9d9"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/FlyVerifyCSDK.xcframework.zip",
            checksum: "8903936dae515caa78084f9ba67cdaa65873190a772b3f81a693bb5c7ab0111c"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/FMDB.xcframework.zip",
            checksum: "fa465b5a55c2a1dc3b563b44c4cb5c2ab243fc2c4a98dbd4150f2668f1a4d975"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/GravityEngineSDK.xcframework.zip",
            checksum: "e5d5dc03e4e32f3594303855e40c6d2675e2c7610978e4d2713e392ce84aec7f"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/KuaiShouConnector.xcframework.zip",
            checksum: "c4ac4405b50840b10e08454b77366f0d562f7b03b7de96217e181b9fb5ab4412"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/MOBFoundation.xcframework.zip",
            checksum: "81f9ce1f6cf925709599bd8af3537ad804db6f3758fde5a12cd00700831810b7"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/OneSDKAccount.xcframework.zip",
            checksum: "2c6908613a5cc6ecaae3b44c4914163a87425e034dadeec6f0cc1227dd0d011c"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/OnesdkBaitianFramework.xcframework.zip",
            checksum: "bbac751a7adda040f95d5ac3717d29d19756f6fede2e1d3d709031f42eacc6b1"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/OneSDKCommon.xcframework.zip",
            checksum: "69af5476c97b4d9e43b1136c00472f5d47c144b57f02055b082b8dcaaaed44bf"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/OneSDKGravityEngine.xcframework.zip",
            checksum: "f007967498460dde9530f60cbba391fcb96f9bedf90de3222afae194fc94bf37"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "2155c00a649157e901e7aa25cd7c22883cba6598ea3e35dd6cf11a5b20289f06"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/OtherPartySDKFramework.xcframework.zip",
            checksum: "8f9f01cbcf7ab9ddf421147e0ec700130363b63b143d60617605bc8d633e98c3"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/QQConnector.xcframework.zip",
            checksum: "c95eeb88c762a77a6362fd3be49b81772d3bb518f128f6d2be99ee5c3f8e3977"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/ShareSDK.xcframework.zip",
            checksum: "38d26da9a78e3c8cbac6e2da11d09cca71d1cd139f4c6a81fc50c3faa472ac3c"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/ShareSDKConfigFile.xcframework.zip",
            checksum: "4e95291588a4438976cc525b104d6275e305ff7f7ea88f65e2679735ad4e3e20"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/ShareSDKConnector.xcframework.zip",
            checksum: "9ee222bc83ae4a32a3c514705c8622fc6c1164f69ac6b2816a1fbaa510ca94fb"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/ShareSDKExtension.xcframework.zip",
            checksum: "4d67c06e1cb27415328bb32c5b7aea4f314553ac584060820b4a371d347cb810"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/ShareSDKUI.xcframework.zip",
            checksum: "35e0440e3402f8c3cb6b465476461b084cd8ac4ce88364d7eb79e3cb5329ceb6"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/SinaWeiboConnector.xcframework.zip",
            checksum: "57a320a620504fc7730d2455edf61a869caec68f8ebf4480da969c970ea9b389"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/tapsdkcorecpp.xcframework.zip",
            checksum: "8926e87fb17ff5e9ea1abdae680cae91783cdcc2f8b478240780c77fe5858081"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "003f8086bc150f294694d777de1ddfb40089c1bf7316a191c18ff009cf2deffe"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/TapTapCoreSDK.xcframework.zip",
            checksum: "60ab5ba56739ad98c59a3627dc4e9aa50b05c157ead26f73900220c305b12f92"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/TapTapGidSDK.xcframework.zip",
            checksum: "7a2c0b53bcda4baac71c583d67603504079fd2025dd18a255ceef9dd888cf0b1"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/TapTapLoginSDK.xcframework.zip",
            checksum: "397a9c362071f1f44c147b62c5c56566459f3ae5f393a06e9ea41a76f731ab93"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/TapTapNetworkSDK.xcframework.zip",
            checksum: "c411e01a24e567c8affea7a1a1ad640594a13ec4f9ca83c612849576c658f81f"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "2781d0e16456f11c157dfdf52d4c4b148fdc081dac8ef93225ebb0afc10866ed"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/TapTapShareSDK.xcframework.zip",
            checksum: "82d022fb2a4490bc33b3970abec44127343a880bc9aebe24d3c86b7db72c4f44"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/TencentOpenAPI.xcframework.zip",
            checksum: "63764571d98030befa86b1cb06ea2b01989a810c9c098e6ec23f27f84779fa95"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/THEMISLite.xcframework.zip",
            checksum: "e5946cc537b5c5c5dbb43d5460386ae8d5d404d6e5f0cd0dd772ffc45f14fd19"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/WechatConnector.xcframework.zip",
            checksum: "2538bb924dd959241e52722e927d300518e3780764e83c193dde9fe94cd470a7"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/XHSConnector.xcframework.zip",
            checksum: "97bb39bfcc19fb2518ccbcb554b38794987505712f83bb7cbc733ec8f5b1756a"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "b7964d69ce9b87b8fd6f88e749e20f2e4d8bd94677e4e654589bbf090297148f"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/YTXMonitor.xcframework.zip",
            checksum: "0dd037e25b22bf880080107f19327f0f4d4fb1e923a6704d949182d5f1a62023"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.6/YTXOperators.xcframework.zip",
            checksum: "d805176ba5c5417ee590209550340eb1202d0bfb0ae23f08cd8fff8959e49c34"
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
