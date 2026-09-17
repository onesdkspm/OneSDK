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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/ATAuthSDK.xcframework.zip",
            checksum: "f9202d47960cff8a84d6c939c2bc880dd8b46200c97f98d87ba142c99850df07"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/DouyinConnector.xcframework.zip",
            checksum: "b263d579cc0b839eb576adc57e2229d6195f34d28441dd5c6722ea6807de9f32"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/DouyinOpenSDK.xcframework.zip",
            checksum: "bba53beb0293ff1f156ed025ea0d08aba1c783cf714d11e77f5d34ba08f9d509"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/FlyVerifyCSDK.xcframework.zip",
            checksum: "7d4d4daf877b29a861f79d5872657208a0804655ae372104b331886c7348288f"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/FMDB.xcframework.zip",
            checksum: "13b9b9d4af0d1188b4a96fa714ebdb49f7ab9bcb02b5b28f86ce09c60e998f9a"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/GravityEngineSDK.xcframework.zip",
            checksum: "80481c40f5bf9d85e717eabd16e811ddd12119c922f6a774b292993dc5200ac2"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/KuaiShouConnector.xcframework.zip",
            checksum: "f66e950fcc2497b6e976abad84bff4c8847dc7c9e9d37677f9bc874d850d71e9"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/MOBFoundation.xcframework.zip",
            checksum: "2b8c33e00b75471cdad2285f419df062dfef0347d10083cd512e45959e4b1e78"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/OneSDKAccount.xcframework.zip",
            checksum: "4b3e7ed706b165fd5afbd850032a1dd870cab70bce0e364e1b367df7ea2afc1e"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/OnesdkBaitianFramework.xcframework.zip",
            checksum: "a83673fba79eb3fcc0086ae4a486a8e9441b2fe972e8defa3f2c1c33d8b52e1c"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/OneSDKCommon.xcframework.zip",
            checksum: "1726fa45c9a2cf4aee7eb2ec07477f03bdf43686186854c7e6cc6b57cae28ad6"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/OneSDKGravityEngine.xcframework.zip",
            checksum: "b510c09c0d6f2dd064fe29f35d29f97146a639e7887c7207e7540e3ff59ccfa4"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "693922e86750f3efc2cb32baa1d513028bf2f8f46517e34205fc700a2a6a3904"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/OtherPartySDKFramework.xcframework.zip",
            checksum: "c55f8f787c43e67e3bf4b8f2fe0cd528b51250af3763e06c0e4a6cc5295c2e59"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/QQConnector.xcframework.zip",
            checksum: "84f421427a8d8b8f6cc48c072e1c3272818aba8d34d7cfe91c095d978c62e22f"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/ShareSDK.xcframework.zip",
            checksum: "1a3efe4f0a66dd2ed1819d8f285a2155ff5b7f263647f10d7d52005448228f47"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/ShareSDKConfigFile.xcframework.zip",
            checksum: "7594f42cf98aa0d92512c93dba0d58acd4c37084938c8d726b35d168ab0a6884"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/ShareSDKConnector.xcframework.zip",
            checksum: "fc683e1d58521df46854331a6f0e500e2266cd6bb456ea3afab02797a5774bfc"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/ShareSDKExtension.xcframework.zip",
            checksum: "05bdbadaf3ceed193c386f107fd66e627c65ec460d4ec774a8bdf74c395812a2"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/ShareSDKUI.xcframework.zip",
            checksum: "c72d339122150eed09827348a426f052dea120215e7fc36ad0a427887ff5e67f"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/SinaWeiboConnector.xcframework.zip",
            checksum: "295e42877f5b46e425c0e0f3826cf22dd6b4fd2d2d481dca314dfc66bd5060ec"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/tapsdkcorecpp.xcframework.zip",
            checksum: "98b2390f5589565fcfeac29449df5be6fe22311ed38c05df5a673fe5c0c3b913"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "f60e6fc5d4e9959fdfe5d0f1cb0e59f0c3c95b58cacfa8010893efb9513c179e"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/TapTapCoreSDK.xcframework.zip",
            checksum: "99268fba6d55bf07b9c43e1f0f38c922c9bcf42a31c04967a4fc986e8b8f673f"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/TapTapGidSDK.xcframework.zip",
            checksum: "d8f6e5c9004908ca01037bf14000021c11853d247f86cba329585dee530103bf"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/TapTapLoginSDK.xcframework.zip",
            checksum: "fb6c8c7e661e9d787a67e7893ef69ae1bdb8224bf0a7932501e7f59659edb75e"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/TapTapNetworkSDK.xcframework.zip",
            checksum: "d6a3da59dc94155c998942348d087aaf29d3d559a5783f055a8e0231ae2f3b30"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "de3a06fb468c065540d223842bcd91821691d8571fe5ee0bcc2e116e1bd80b57"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/TapTapShareSDK.xcframework.zip",
            checksum: "bb959c0131da44091a231e3662e076b5f63f80360c8e9ca505159b49ce5d6cb8"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/TencentOpenAPI.xcframework.zip",
            checksum: "fa478ed9cd7f359b2a00db3d3de122e98b6f21141d0862da2e93d65ca480d2c7"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/THEMISLite.xcframework.zip",
            checksum: "377facf00880ac5af714646476abd1ed636971797ddd8192775e2cce274d845a"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/UnitySDKManager.xcframework.zip",
            checksum: "fa9011bd50eca5b67208b3b4a3a47bfa0df405ebddeb0f95605920abcb9ac06d"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/WechatConnector.xcframework.zip",
            checksum: "6ff0a9a1b3bfe3067ada7049d23e5c2f79cabe6d10722df794f59b08baf68a76"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/XHSConnector.xcframework.zip",
            checksum: "38ad21d5af23b7bc68d88eb7bb23180bde97980d3bca79bd2f78874021c29384"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "b4ab9280f751276ca706003b41c7702457a49f0d8fa87320d5160313c84052e3"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/YTXMonitor.xcframework.zip",
            checksum: "932c7cfb4f4761f2af98692b0732cfe0becce1b6fc1fd427020a135ecf983242"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.2-dev-1530449/YTXOperators.xcframework.zip",
            checksum: "f919cfab82d04e08b815103aa397e8dc95a3f7decf288e780a406ec365337f3a"
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
