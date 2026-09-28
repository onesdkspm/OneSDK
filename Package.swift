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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/ATAuthSDK.xcframework.zip",
            checksum: "590b3e7081928867cb76a429b8853557b770538a2f36e30f6d888818e4e37e85"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/DouyinConnector.xcframework.zip",
            checksum: "18528d2b30e8505705748c79008c820d2dc8584b2d7d6d6f644443ab3d4a32c1"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/DouyinOpenSDK.xcframework.zip",
            checksum: "eec647f31f3271843380a8b14c8b3892b3418949a40830f57e0a985996f6b861"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/FlyVerifyCSDK.xcframework.zip",
            checksum: "5cb8f0eaff0fd42aca52a853965f2f5faab960dd876a4bc5290acfc5bf27ed6f"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/FMDB.xcframework.zip",
            checksum: "94924e414b59b9173d00058e715439e6257b22bc831abd317035333697e0ba0a"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/GravityEngineSDK.xcframework.zip",
            checksum: "39a344a2f24c90ac77acf4a9ad32f162e21ac14f406c1088282e084e3c96b32e"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/KuaiShouConnector.xcframework.zip",
            checksum: "4a389ee762210476ec78d02721a5870537771cba5625a04b29d4d846bfb37a42"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/MOBFoundation.xcframework.zip",
            checksum: "50aad261ff1be6f6a6fd539b009c253c9fdc8ef4698f5620cf1c0d22a3a2b8a1"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/OneSDKAccount.xcframework.zip",
            checksum: "0acbc20ef72af3fa64f55afe3154905d043f70831d7bc0d660d997679bd7d9ce"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/OnesdkBaitianFramework.xcframework.zip",
            checksum: "de003a8f9ea31883841d83a7c2cccfc0ed8b4237d96c5d9403f7e35efdcef770"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/OneSDKCommon.xcframework.zip",
            checksum: "6faa5fd149ce7cce4a9646954ad942be80c46fb1bb128e45d33f5462a359e175"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/OneSDKGravityEngine.xcframework.zip",
            checksum: "fda1e8c3d5bf4708deb110807b6f62118ae19d104125a6ca753aba658aebc444"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "24a78e442f5370f1f0c2f4ae0c5ef42a184b10cab39b4d9b3e9124ec578c2d09"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/OtherPartySDKFramework.xcframework.zip",
            checksum: "97b665470be1a518f2f53dad6ea0386de60de3a266e3e1a11150ffd299e5e818"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/QQConnector.xcframework.zip",
            checksum: "74ca73be4ad09341f2254f39be556a9a521b0ea94e07deff67643d10bcf4e3e3"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/ShareSDK.xcframework.zip",
            checksum: "41d3378a90d32e9beccad125ce31ada10aaaf92522811257b5ffb28d6ea40c5b"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/ShareSDKConfigFile.xcframework.zip",
            checksum: "dbe93bb42c2d472119a124b24bbcf9791f3f24014589de2e4188e8ad1ff5ecd2"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/ShareSDKConnector.xcframework.zip",
            checksum: "9760c7283f718eea87faafcbbcc5b05f8306cd89960c099c88ba78e6adcb070f"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/ShareSDKExtension.xcframework.zip",
            checksum: "fbf4a8ac2457779c724ed85c1b9736a30754dd2f5f2df9a1fbf49a2c7be1e9e5"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/ShareSDKUI.xcframework.zip",
            checksum: "f9c63149031d34cc2d35c32f52c30b06f328e4c3dcbc3e92508a674a849a4d8a"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/SinaWeiboConnector.xcframework.zip",
            checksum: "e5a32058b42db1b608ef8d9e84c5014d1db170bb5eee9d962a59617557d1454d"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/tapsdkcorecpp.xcframework.zip",
            checksum: "c13161e1b222e0f0171dba2c0d40690517069fe537332353a41be71f4a6d16fd"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "2d6be9dc1aab8b2c4402a89108c8d7f5065c01922748cc3ee15634ede3227515"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/TapTapCoreSDK.xcframework.zip",
            checksum: "2768958e3642f2114865f61be46cd4e14fb83d662819c6498b83a8d4cd36dbe4"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/TapTapGidSDK.xcframework.zip",
            checksum: "9ca851176a00058d04a2d440c78f81d3334e9fb37f201b24e37df7cd04e87461"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/TapTapLoginSDK.xcframework.zip",
            checksum: "95309ddd6ecea4fafdb818e91ce66b0f7284c3bcea415bdd333b148c093af16f"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/TapTapNetworkSDK.xcframework.zip",
            checksum: "491664214df97fda41ccc01049ae437ce132edd2427e3d7524ca1e11de4ff91b"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "6a1e7f9adace71771c5238ac2a1e87d56d84b8b9edd98cc22bd4128cefecf0fb"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/TapTapShareSDK.xcframework.zip",
            checksum: "557904463c8bf36290f4f2903eb0dd1f8ff388c65b311030a6047d993a681047"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/TencentOpenAPI.xcframework.zip",
            checksum: "145ea5e10113ff8d7eeeb11672f36319558756df1887ae472a513f7c3187955e"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/THEMISLite.xcframework.zip",
            checksum: "ab9c5d845f93792bbd1b5e19b66993f17755e7b7dc76d8c7fbc92d68ece58f7d"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/UnitySDKManager.xcframework.zip",
            checksum: "14e8980deefed679197eb2bf61c8cc9aa31e63ec16db7a23e229179724f35fd6"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/WechatConnector.xcframework.zip",
            checksum: "79464d2d9f2de8d346a3cdd200776768fc8643fbe28d24ceeb9faa22831bb416"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/XHSConnector.xcframework.zip",
            checksum: "fd58826824c495537f5f73fa54ccb4739e633f0461f6a264c912a6890b8088d7"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "25e0b0d69f5542f427dcb430e88eec3d4c9b7f169629a2a4943b6ddf9fb886af"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/YTXMonitor.xcframework.zip",
            checksum: "de577ca037081203d4c7f5d5e1a2a3783c6bfc72399028843d53a35fae7ca2cd"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537294/YTXOperators.xcframework.zip",
            checksum: "2ab38ab7c4b73907720a816061f12f79f13af1467836b3c4968b86ab19fea635"
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
