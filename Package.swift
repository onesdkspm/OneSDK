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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/ATAuthSDK.xcframework.zip",
            checksum: "7ab871ce141bb59c3e25840987bc3ae7a9bd18e51d81c217b12865547102dd08"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/Bugly.xcframework.zip",
            checksum: "2684f87a34c82a84df95348af031a631fdaf0b4d07490b917cee5b88bf7c9954"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/DouyinConnector.xcframework.zip",
            checksum: "8010d3336d716ce1d20027723d151f05b85f3a9342320e2cb33be0db90d5da20"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/DouyinOpenSDK.xcframework.zip",
            checksum: "29929636aa117a636fcfd730a675a2d1339525ea5e355a5a573e2bbbfb2d7a61"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/FMDB.xcframework.zip",
            checksum: "13805d6e6b0ac81af58ffd4b2aacd40ab92329354f4259d30e74d204f477fee3"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/FlyVerifyCSDK.xcframework.zip",
            checksum: "3d1a569b8ccde6167808ac489359d24863340e0908c383159b9478d7f8a510fe"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/GravityEngineSDK.xcframework.zip",
            checksum: "862c85eccc660f0c1a9c1bf0b1c2b868721515531474bef60ebcd4e9d095905e"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/KuaiShouConnector.xcframework.zip",
            checksum: "f18160d7a44b0eb6fb18345d3b509553d35bb38a868095b412203995eef9e977"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/MOBFoundation.xcframework.zip",
            checksum: "22e3535ad25e641bbc9ed7999b9902a16ba933af3e8320f4805324f02695fd76"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/OneSDKAccount.xcframework.zip",
            checksum: "f71b8c363832002ec4e55229441dea10d440c694b21c348628718145cf341c43"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/OneSDKCommon.xcframework.zip",
            checksum: "3c6148534d3f7085f5d3006810780175d9040e9a0822d92ec852609d14652734"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/OneSDKGravityEngine.xcframework.zip",
            checksum: "63415917d8d2d9e36e810ab942b295d462f4d2ee130b8dcebfd3b0630bf9ead9"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "98d62b69a2b943dd2201d2dcfd493af6bfcd10431fc8fef7d4670dfeb68207b6"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/OnesdkBaitianFramework.xcframework.zip",
            checksum: "af8f5feb23859259fc221c8c3f15cfc9b804761e6eab363eec537376cf486edc"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/OtherPartySDKFramework.xcframework.zip",
            checksum: "9a51b9f876bce1f9dbb52101d7a0cf4611bb68e4a6a2d0ec5a884fa62dbde62a"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/QQConnector.xcframework.zip",
            checksum: "915e8a72ad1af9772c97630cfe9d486805d0054b5f66de5585df9524e0f2d6d1"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/ShareSDK.xcframework.zip",
            checksum: "a4060eb6d6f027a91cf29506247f53db086244189cce57a485c8ce38d195f879"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/ShareSDKConfigFile.xcframework.zip",
            checksum: "43bae02c835cdb92a70c215ce882c6514df751ede688a5c079afede9bb3b3b08"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/ShareSDKConnector.xcframework.zip",
            checksum: "53a47351a5cb0f12ebcdd0cb97d1ff6f74d07ec47347dd7f2f4aee005bbf0231"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/ShareSDKExtension.xcframework.zip",
            checksum: "4c87b48e8dfd39f25894ea0c585a342c3dd0f1813b1c7f70c6ae885c36058045"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/ShareSDKUI.xcframework.zip",
            checksum: "ee9ab67cd863fb031fba374c9c6a6395fb9f5eeea1a78e97e9ed589db775b5a8"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/SinaWeiboConnector.xcframework.zip",
            checksum: "4a950a302236eb94311b868f259368fcf988af229a651d8091e7f2b2a06d7546"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/THEMISLite.xcframework.zip",
            checksum: "e54e25e9f5c55f74196de84258c17b0673317d931fe89ee676ea5786f3012d6c"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "6684b891b17db72ba2d815073c1d65e2479ef064ab0f132abd06622618fe9b98"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/TapTapCoreSDK.xcframework.zip",
            checksum: "152ec46787970add54450545a75e0643da278f6ffdbe0fb63b7c1072ff496277"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/TapTapGidSDK.xcframework.zip",
            checksum: "a910e011d68219d5464617e240adf367a0a1247cf987f87dcbb52e9f9c15698f"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/TapTapLoginSDK.xcframework.zip",
            checksum: "b8f9d2ec99ae3178987e76901cc9cb5750d384327bf90d45113ca0a4bb4c2773"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/TapTapNetworkSDK.xcframework.zip",
            checksum: "e258dce708372b94b9cef68a1fac6ea8751dbfdec7095712985a7789de302b78"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "5acd311076cac532b5d47063dfd9c3a492dfe1cf360b3e8cc832ff8baa880e63"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/TapTapShareSDK.xcframework.zip",
            checksum: "26ad0599f190627f0fbe40ab396d5599def2de37382699ff16d26b792c68c907"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/TencentOpenAPI.xcframework.zip",
            checksum: "769e522dae3f9483f8b59aee50edef7a2318c46b4ba106658c1bb479fc93ec4b"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/WechatConnector.xcframework.zip",
            checksum: "2e12c289ac9dc31b5703d014cc7c9b0a6bfe1c51e63c6a057658bb738572e20a"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/XHSConnector.xcframework.zip",
            checksum: "6b8c79c707804b7f8d5c340faf6a3a56e72413cc3e323019be667ad04c556c70"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "dc3a6f3ab4ce398c46107cf46bd2fc32367740e69c5a12c9307aae72e79a9cbf"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/YTXMonitor.xcframework.zip",
            checksum: "37158fe9e741f736d14ff012c2e0b3f05883574be94663cedc2d59f899ed9398"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/YTXOperators.xcframework.zip",
            checksum: "3ebd40f2fc240b5845856ee53fea28c3fa3ecc02e126f630afdb9d5642f244e4"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401677/tapsdkcorecpp.xcframework.zip",
            checksum: "6d924f2fea1b0849df780b2319af4274b10ba3bf81e26e965eb71658de788dcb"
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
