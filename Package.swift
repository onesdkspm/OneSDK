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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/ATAuthSDK.xcframework.zip",
            checksum: "7e84ca64007a18200626f96e7c8b55e14946fec3d3721dd66d8cc081576db158"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/DouyinConnector.xcframework.zip",
            checksum: "273a928b60e9a62e9aaef70cc85b6e599218012ca6336da976f6cfa9f0cbcd8a"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/DouyinOpenSDK.xcframework.zip",
            checksum: "9a5d2772a2bafe94449b81d087506347865eaaf233c818d6b5bf66d668f145ab"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/FlyVerifyCSDK.xcframework.zip",
            checksum: "56a216c9c9645221e69a8d7e3d22809a5a70aa2f0017a6c70804b1dd362a4b0e"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/FMDB.xcframework.zip",
            checksum: "0590d90179c8dbfdab7f0ea563132909d0bd3a07923058298010d285684250af"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/GravityEngineSDK.xcframework.zip",
            checksum: "049db831f90eba623238e6cfb805f01971949b98c1a0a3ca3b5678ce02d90c2a"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/KuaiShouConnector.xcframework.zip",
            checksum: "b51a445df96385c20144500d773d66e46c58e135a632ba8fa04f5026dd76529a"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/MOBFoundation.xcframework.zip",
            checksum: "0fa6d760a1d105cfb1757bcf6010e35956a9e741e8c8b6b2ef03d34e841c7825"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/OneSDKAccount.xcframework.zip",
            checksum: "916c38b43eaa663b9d92d6308133d1013d94f70c5ab0d58c5fe1861c49250df6"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/OnesdkBaitianFramework.xcframework.zip",
            checksum: "b945bd099f6dc80960fc2702f4a3e9335ee12aa5300b34092acc9e789ef5542b"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/OneSDKCommon.xcframework.zip",
            checksum: "86a63ec8703bf47abbe8cfe2f820d2dc3a37013f5a1a4f5b7ad31ab56c415324"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/OneSDKGravityEngine.xcframework.zip",
            checksum: "781941ac44aa62226943857fd1a6e64d45b64e1fba760c1920ea082560e290bb"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "345c98a4832308201185ba5f400f6538b8ec5fe6b94eba773edafecdf3b9639e"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/OtherPartySDKFramework.xcframework.zip",
            checksum: "b3fc777aba19616f69c44da15c9c0637174cc8291ffea7226be9161a550cccef"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/QQConnector.xcframework.zip",
            checksum: "1f84d620249e5158526b4b9af5b4abf0a3673706a5734453fe2a91f2abbe4f40"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/ShareSDK.xcframework.zip",
            checksum: "e3925e9b897b2458f4172dae9c20b9da1e1a53e8b04149a2201b0cee81d94f0f"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/ShareSDKConfigFile.xcframework.zip",
            checksum: "8cf0f3f0b23d8aebdbf4298a443d1acee8389946692c14d4005e9e6e33a0615e"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/ShareSDKConnector.xcframework.zip",
            checksum: "cc5a6b376abd34c6648102d87dc1082ceba5dec6c089a23586a169fcc7f40297"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/ShareSDKExtension.xcframework.zip",
            checksum: "7ff71273bc6e49d9cc507b06c828e86cd9ae872b56b25fe4197d45ccc2581764"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/ShareSDKUI.xcframework.zip",
            checksum: "ce82c61bf73beb896d4de4c36c39b30bcb25055e0607bcd3291ba54fe545cd8f"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/SinaWeiboConnector.xcframework.zip",
            checksum: "d037b5f3bdb63aa217d99b43dd15cc0a56e288231c4795bab3f0087d45636be3"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/tapsdkcorecpp.xcframework.zip",
            checksum: "c3bbc2fcc4ef0fc4b0a7ca28f4b41001ddee7c04fa0db665e0d83f01259b5715"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "69928fde5bc122c38af89c7a124ac93a1b7206ea92b8dafe22b2a4d91042c04c"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/TapTapCoreSDK.xcframework.zip",
            checksum: "e0978a960c89b184831d4b6097072f707f4c552e2641380574dd60a0700beadb"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/TapTapGidSDK.xcframework.zip",
            checksum: "1992a2159050b99d2ebcee3c64f2c8da3966fe1c964d6d6b78c35e93ff0a730a"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/TapTapLoginSDK.xcframework.zip",
            checksum: "2c82face39ab6821447bae6a6258406a5661ad30d170167605eff1a9daff442e"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/TapTapNetworkSDK.xcframework.zip",
            checksum: "16bcab1c9b440b836e909725704d52108a8cc07131979bd59dd79c966f69cbfe"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "cc718ef1463d5ff4a9b817b88b67c749fef67e669ae5f7ddb846e91eb795eaed"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/TapTapShareSDK.xcframework.zip",
            checksum: "b191274695869e4d03625612f264266f7cb6ebd2416a57fac18445b12804c4ce"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/TencentOpenAPI.xcframework.zip",
            checksum: "e0977a8cfa456fe5ab12afd4e05a2d42f20c29655d01a3a10792b5ef53e943be"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/THEMISLite.xcframework.zip",
            checksum: "48c9c909f57ca32e0be92f5eaa58c54bc4d14605642f08d71de98411fa0c7a55"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/UnitySDKManager.xcframework.zip",
            checksum: "1799da80a1596787025a35cea62e0fb696d84d2ae7062d3d8ef5eb0d9db71c07"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/WechatConnector.xcframework.zip",
            checksum: "0700bb5dfdbf31c1557abb99125dd4a1b2cc24aabb7db3582b2ebc62f159272a"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/XHSConnector.xcframework.zip",
            checksum: "dfcb9e81e59bfb132d05ac3969baed77aa57feb1a79cba90c64a367cf07c2d58"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "ece10c67bd8ae1b3a75fd67621866805464ade1ba3eca1cf243b720badbcc97e"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/YTXMonitor.xcframework.zip",
            checksum: "1cc69ad4c093bb01fed089cb6b561d4f89b02b2d509aa1c1eb4f120cec2088b2"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1552229/YTXOperators.xcframework.zip",
            checksum: "24dc387be6661c851c34391624c44210890fe594609cd039d9f6a54d27acb28e"
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
