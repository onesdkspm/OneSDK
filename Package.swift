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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/ATAuthSDK.xcframework.zip",
            checksum: "f8bf0e7e7e8962abc9b3af0d2350d11ccfe98fd183a58d8dab5e860c53c01912"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/Bugly.xcframework.zip",
            checksum: "e6f392b5118a9d74f2f9d2bc593a3b4b5f262b0c1a5837d14e9f7d4dec93418d"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/DouyinConnector.xcframework.zip",
            checksum: "dc9cf7a64d36083da1b803fe875c8fb229d22994df0a23a59b37fd8cb88b46bc"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/DouyinOpenSDK.xcframework.zip",
            checksum: "3d0559f27748ece927386d8eee4dd83a00d88a51edb8a2bc9fd1bf77517373e8"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/FMDB.xcframework.zip",
            checksum: "861235eaa9aa341b3e12a385e789efcfb5e9e5758da9d0afa8f72b8cc3327b14"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/FlyVerifyCSDK.xcframework.zip",
            checksum: "02f83c822ae37a9f92a057925ae349025d683af5b7e081f2a3338df65710dc5d"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/GravityEngineSDK.xcframework.zip",
            checksum: "8d2122bdaa29742a0d2dc07110b459fb3cda6f9e0d5acd0748ff64d03a2a3d2b"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/KuaiShouConnector.xcframework.zip",
            checksum: "8240dec5f5d344bfe361554e6117cc24fac5d69ee24042cdcf13e47b963491ab"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/MOBFoundation.xcframework.zip",
            checksum: "e1c6b82141edecb615fa525456edc7c74b58e5e40ec3610142c74a4a3afc8bba"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/OneSDKAccount.xcframework.zip",
            checksum: "86f14abc8de5c16d3b024b0f36deab985bb934354778de8f4503d04cf384c48f"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/OneSDKCommon.xcframework.zip",
            checksum: "c8da123b50bbe97b3a8bd33c6e9e3db01ab26466843d14f83ee5cdc197ae3981"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/OneSDKGravityEngine.xcframework.zip",
            checksum: "443cf344c325c5cc4aeb91f5eef82279ec2f5ec52b58d367641377e0e5f5b78f"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "54e332ce582b68ba390a542a5fb5098ba0ca730c886eeb113faa83b9fc0c9a5a"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/OnesdkBaitianFramework.xcframework.zip",
            checksum: "818cff0d4ea7da6e9ee3e4783fb0dccb36b4b283cffcc1d21c3d881bbe249bbe"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/OtherPartySDKFramework.xcframework.zip",
            checksum: "fe31cfc8ea0aed56cd4cc0b4819d07f4994cf70f9b5c0fbabafc9eb882e53c62"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/QQConnector.xcframework.zip",
            checksum: "b45e61749e78d464c59ed348bc3317b1a4893faa69a22f5255ea39cf29cfefbe"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/ShareSDK.xcframework.zip",
            checksum: "e381af79014af2ffdb31bc4a5ac9a6de7ddd50bac2623a20dfbb957389a81af5"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/ShareSDKConfigFile.xcframework.zip",
            checksum: "896c3ba5016f2b5a9c3cbd66bf2420475f06c555d86da4c1053e3c84e8d19d10"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/ShareSDKConnector.xcframework.zip",
            checksum: "8c5b81df8cf5205f193c4031fb3611e403e0bcb3f10580d0cdde940e324e151b"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/ShareSDKExtension.xcframework.zip",
            checksum: "7c92cf9e774b8f8f2d2e7f2178260be6572158331b8b84aac07cab2cec8b7ed7"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/ShareSDKUI.xcframework.zip",
            checksum: "c06c260e512079a45536ebebef9277fb40d23432b5543d0f1add21217f85e476"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/SinaWeiboConnector.xcframework.zip",
            checksum: "1d756fa43e1a51396362e45b9be8ec5ee59468afc84a89846a1f69b9f913a17f"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/THEMISLite.xcframework.zip",
            checksum: "1fa4eedbf85ee6434133b6ae209c3075aa9fea60024b207e0ee28e0031fd1452"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "a36b88105ea425bc64e1357322a843059fcd55d5b7017cb620d97ebbe0e30d38"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/TapTapCoreSDK.xcframework.zip",
            checksum: "41aaacd35615c1bac8a29f9d2032fbc105b734dbcd2dc6191d951f4edaf9572f"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/TapTapGidSDK.xcframework.zip",
            checksum: "e6b98c66aaea14b00b0725f7ee62b23ad89171396cbfe441561ea373e70dddc7"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/TapTapLoginSDK.xcframework.zip",
            checksum: "17090f1dbdd6d1f87388112b04b48054abeef8b3de8548434168a70bbf882d66"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/TapTapNetworkSDK.xcframework.zip",
            checksum: "b96a836ae93cf5fdab7d1995418d5c653791c058d1e664abb8722d4fea0ff32e"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "97d6453060111ec059873feb40b1f188b537f33d4789d0efbb086b862d2e307d"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/TapTapShareSDK.xcframework.zip",
            checksum: "716642903fb1c6176747fdb45834874b0fa5f45877ae212cb34e509bf1cef0da"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/TencentOpenAPI.xcframework.zip",
            checksum: "a8dd68f7faa3d33fe19f107b88b2430b1114ed14bed5a6a6473aa3f45604ac88"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/WechatConnector.xcframework.zip",
            checksum: "552dcde611002a2a536893a32da03656dc6c3655365375641e774cac04d6ee7a"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/XHSConnector.xcframework.zip",
            checksum: "bc1596db5a66b5d164b7435cd5c9b316c5f10bcf9062facd6476fe4a3f617989"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "557b3f137898812e533dc6f88299521282b28adf67b9e66f89d37decd184a5da"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/YTXMonitor.xcframework.zip",
            checksum: "53cc4454102f74737a5714b0cd515aa3e0f6250e30cd2d6116284f937a20a52f"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/YTXOperators.xcframework.zip",
            checksum: "07f54b79f5de63e5c6dc1022a0f4fe6394e3aaafa07783b1b13c0123b568d781"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1401423/tapsdkcorecpp.xcframework.zip",
            checksum: "44c311325609e291b443a9a2393fd4c0d3695ec63834f883b7353a93539e5dff"
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
