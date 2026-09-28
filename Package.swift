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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/ATAuthSDK.xcframework.zip",
            checksum: "63958186afbae03ddb3ff7c809d8c3fd4f57f83cdabb792659fd10700c2ade48"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/DouyinConnector.xcframework.zip",
            checksum: "9de905badcf7532be3c5d8db3007a397cdb4884f33eac371c80812463cefc486"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/DouyinOpenSDK.xcframework.zip",
            checksum: "f541326eb339ca0791d53a322874ec2b2cc9229b139b0697fd35a2a5bea6dd55"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/FlyVerifyCSDK.xcframework.zip",
            checksum: "ad95f2f5e4c8e27d2cf84b1676424278cab3cdb25305153a67b2bf9e33dc7bc7"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/FMDB.xcframework.zip",
            checksum: "b94f3490e724453313d91b7459eaf3a334f090376c0a8f919cb59f5fe3c0bb68"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/GravityEngineSDK.xcframework.zip",
            checksum: "9a903b8e1e78979b2ad66c2160084ac1725325979f2295310038193a50fd3cd3"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/KuaiShouConnector.xcframework.zip",
            checksum: "4dd56ee159cbc436ca753acaffbe49c6ce779cdc38bc7c8eda67cac80937f96c"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/MOBFoundation.xcframework.zip",
            checksum: "1b7e354fd51c70e3efbec0b2989824aca1f85eda79840c95ec99c4e6acfffdf0"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/OneSDKAccount.xcframework.zip",
            checksum: "e27654b089666d5ba419ca964c0e615811468eb0a7908538bf24ba2e2996200a"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/OnesdkBaitianFramework.xcframework.zip",
            checksum: "02e6b8a48fecc29a27b42387ed4286d04b4407f1b1456a613c8b14825b5915c2"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/OneSDKCommon.xcframework.zip",
            checksum: "e03855d31a010a4f4e5d0be39cf5b5bbbe8a75064b9edd4578a66e8801c7d05a"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/OneSDKGravityEngine.xcframework.zip",
            checksum: "ae7fb527520ba57befce4e8b2b8bea9100e9badd8e129527ba154a8799186fc0"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "5d12504d5b3d05a203bda86bf2c13e00621c62e8b5650f791f1d10efd4e24994"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/OtherPartySDKFramework.xcframework.zip",
            checksum: "ce39b2fb292827840ec833882c531ea5631287369f5a65ec16d53a7040c2ce90"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/QQConnector.xcframework.zip",
            checksum: "c5464aa541ebdb0b9329de3f788d5051af477ecc5fd609d58013b7f1c43d8037"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/ShareSDK.xcframework.zip",
            checksum: "3d991dc089e7b49a86ddf5b990943eaa5f47c9b9ee3f0e3a5bba4de86f1c7ad6"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/ShareSDKConfigFile.xcframework.zip",
            checksum: "ec892b290accf72100b614ed5775c431e4dcf15344c79ab51ad80c7545357ba4"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/ShareSDKConnector.xcframework.zip",
            checksum: "b557f3686f96e4bb45b48c4e3103536921e9fbb073863c494e3d5415ed0c8ba7"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/ShareSDKExtension.xcframework.zip",
            checksum: "769ead3c8b754c7ccec89a53bf55a72a1d965cf6820f51c3e9a860e0693e8439"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/ShareSDKUI.xcframework.zip",
            checksum: "9983e70fbcc07455fe538afc704351016e0e2be0a697a730ed615b5cc5876f1e"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/SinaWeiboConnector.xcframework.zip",
            checksum: "2e1aadf5d0e79945a793462241aa90808260a361f5decbe42ed2423aa0af0ea1"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/tapsdkcorecpp.xcframework.zip",
            checksum: "8ced7818e2e2a8a336d0ce9ea5d4678a61120e8d3226fad7364b2e18bd4db29b"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "616d1ef3583db283d864c3bb19332953c017e30c5a4cb0e4de801aee89f34c12"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/TapTapCoreSDK.xcframework.zip",
            checksum: "c60f9a40507b9114a16a1fb26d15b6db0c2ceeb94a3c77c51d2df623d3ebe17d"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/TapTapGidSDK.xcframework.zip",
            checksum: "c4de62f5d8873900ac6b2b866e7e84e6cce1350673e4679b1188364bbe7b93a4"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/TapTapLoginSDK.xcframework.zip",
            checksum: "5be963f66ad4a7268d0e6692aa7d1da7e006bf68194cbed949c0d0f65014b79b"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/TapTapNetworkSDK.xcframework.zip",
            checksum: "c933ac9c8e209e2140f3454f0bc500cdcefec8d4569f5a3b0b1bbb9c18fd04fd"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "bd7a71e43f463f6aa07a7a7ef1d7f6c364c752d05ac047f071a6cf1ea33d5ad0"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/TapTapShareSDK.xcframework.zip",
            checksum: "d5855b204c42b5ea67c9b171575f7cedfa3ff85c0fa1ec7f2104cb590539ee2c"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/TencentOpenAPI.xcframework.zip",
            checksum: "aba33ebdcfd60e70a8006327c57dd02492f7e6a7805cc30ebf3c31cc6111f068"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/THEMISLite.xcframework.zip",
            checksum: "4080c8fbbeedebbf19bc7b43565dcfc12030fd8dfea922050268713bf27fad04"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/UnitySDKManager.xcframework.zip",
            checksum: "dbec1af7fdaa159123260bbf1356e90093dcd281f723ffbdf4a1b9ac538ab0b4"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/WechatConnector.xcframework.zip",
            checksum: "d1147abe9443b85357fd9f573becebaf475e9d0328a68cc16110e2e90356122a"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/XHSConnector.xcframework.zip",
            checksum: "6deef433aa49625513093b6dc1a7844ffdc196ed30037bf44e9fbd6b63dc6ba2"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "5a34e551184697dabde75e76e2076c68106c4146ccc99e6805cea8e0dd7aa913"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/YTXMonitor.xcframework.zip",
            checksum: "18004244d1c9cff7fa17a88df64683fec0826c2476065e8ef1cc11db593ab8f0"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537337/YTXOperators.xcframework.zip",
            checksum: "111a60dadd35707cce15b32db3c87cbdaf11cb02675ce1ffb0c658b6be82065c"
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
