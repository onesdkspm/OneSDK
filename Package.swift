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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/ATAuthSDK.xcframework.zip",
            checksum: "37ec35946d3bc5a7ba90a269142499a0517a06c55a1ffc8a6379a5db3f8fdd3b"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/Bugly.xcframework.zip",
            checksum: "b6c242788cc4cc3e096712ce1374f24d6facdf5b4911518404768129131e1bef"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/DouyinConnector.xcframework.zip",
            checksum: "4d08c178d6ec6bbfcc08d949291c49c42272583f3de8b6a3f802e5e462ea197b"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/DouyinOpenSDK.xcframework.zip",
            checksum: "27d9e94e454f70fdfa8675c9362407e559fc547d689b6c9156a1f8e210a5a9b8"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/FMDB.xcframework.zip",
            checksum: "c683760f57bced774f4c245f31189cb39a2170d810a79c3c4368a3c9903a797b"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/FlyVerifyCSDK.xcframework.zip",
            checksum: "a4ad4f2844ddcc397330ea00c1295c45ab1a5585cb157b6d087a6844a32ac0dd"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/GravityEngineSDK.xcframework.zip",
            checksum: "8f5a23538b70fe45c69dd680b3e430d6e258aeeea9bc47401e3d2dd42d9acb82"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/KuaiShouConnector.xcframework.zip",
            checksum: "8492397d9cea4208576a52758d9574abcc5e976c31b5c2d2e520bd2c65f8796b"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/MOBFoundation.xcframework.zip",
            checksum: "eeabc00390f7644bd864122a99141e8a7bff4b21d1c4b1ab789e85da0b845cf4"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/OneSDKAccount.xcframework.zip",
            checksum: "5b2aca53006e08cf013a7e1383f4e3a2f11a28999d29c378dce39637599ad087"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/OneSDKCommon.xcframework.zip",
            checksum: "0c303284dc8a7104c0ae2accf2aafa94d7b1225d97454de56096dcfc7e0eaa7a"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/OneSDKGravityEngine.xcframework.zip",
            checksum: "4ddd40db6475eae60929fc6b4c44f4af68542c4611b583085a3ea031dd5a6886"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "b50e21ed31a0616476e99d225622afc6e596a076eefe70c45b7b4d30a46301f6"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/OnesdkBaitianFramework.xcframework.zip",
            checksum: "b031c21996d6f08ac0641c2e898cd36825020f78c0a9374e2e5138dd99a4a62c"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/OtherPartySDKFramework.xcframework.zip",
            checksum: "793ec4bf6a93370d3dc5e10008b3517ebd1a5c8fae2729a7f664f9af493fa366"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/QQConnector.xcframework.zip",
            checksum: "08e865b69bb897e2af849dac4bedc812d3a80f54a6120df496521dcca6f54656"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/ShareSDK.xcframework.zip",
            checksum: "3f140ab5a54e733248af892384df6d341ecb2f9329981d0ab1705af33af77214"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/ShareSDKConfigFile.xcframework.zip",
            checksum: "2a1274b2c702471c412f333396646b9cd01626bcc29bb6d054171963ecf8c360"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/ShareSDKConnector.xcframework.zip",
            checksum: "8627c95131d3ec9f7d90f9bb56a2da1a4c0233bfc53f98f6be72dee6575bef8e"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/ShareSDKExtension.xcframework.zip",
            checksum: "4e32a007eb3bc8f6aaed4122e010cc83487c0c51f4481051f8fa8a369faa1fff"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/ShareSDKUI.xcframework.zip",
            checksum: "361122755832048127927f56e44f48117ed0a8d7af38e313a41af2df3a0bd305"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/SinaWeiboConnector.xcframework.zip",
            checksum: "42dc460ca5793cafbf937bba7f5a0a1c825a8341aad34782ab6f5b4513dfc7cf"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/THEMISLite.xcframework.zip",
            checksum: "b7b298e8c21b8be74e6f05de7402adaf7623601b22559094e67bf27462f8bebd"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "6d46736275be9ea63e947256ce0259a034bd3aaf908baeaef22c5e5ee17156e8"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/TapTapCoreSDK.xcframework.zip",
            checksum: "5c9dd13cf5701e08ae2e27b2d48b04fd4715fd3b99dc3b3aa03e1afe0f11e9f3"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/TapTapGidSDK.xcframework.zip",
            checksum: "13cd0a92d101dc5b51d6c42e9d6e62c1932953c57b21a2350cf94386d58da814"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/TapTapLoginSDK.xcframework.zip",
            checksum: "d8f69fd60e3a5386b1589265ea01468ca010866739e09f0a388e3335fa71d299"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/TapTapNetworkSDK.xcframework.zip",
            checksum: "3c1d070a82cbe96c83dcd82445cbe174db9cccdcc42d77815ac9e52b31602522"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "151dec42a233eab781d92a41d7231f6cb0d2b4b4e38d8f8ae4b92d653db69918"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/TapTapShareSDK.xcframework.zip",
            checksum: "01644425aa101e8f2aa8a7a02a36ed836011257dfc1344cd7974c9d134798af9"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/TencentOpenAPI.xcframework.zip",
            checksum: "8749622298f19d1b4ce5f284bac8f9f5fab758b98c57d859ca880d957cff9ce1"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/WechatConnector.xcframework.zip",
            checksum: "0d9748041f0631ac41ecc9384787830577434fd42d300b1ba7fe37c04b970c65"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/XHSConnector.xcframework.zip",
            checksum: "33739de6351e61b6cb8e3990f0d15f3624fa86b50071d3fde0c59bf2f018ac89"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "91862a5b83e8c0cd56f83399bad8a84b761a65716335c08a4090dc157f64332d"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/YTXMonitor.xcframework.zip",
            checksum: "945fe4df38c66a3a6deb608103cdbbe9fbe350271e6565a0dda284634c7e333e"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/YTXOperators.xcframework.zip",
            checksum: "038f32a2053f3fabd53d2c2783b7a1f2435f51c1121abb78d7f8fa7314d1b2e4"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/1.0.9.3/tapsdkcorecpp.xcframework.zip",
            checksum: "500d88ca1579b4d18e296f1e967e659a2b201d39faed1ab0ad6749a9e3db9d7b"
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
