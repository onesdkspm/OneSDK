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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/ATAuthSDK.xcframework.zip",
            checksum: "39617f971423cce95f7c1258900eb4e23a12cbd2c4514a9d1c80b35772390767"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/DouyinConnector.xcframework.zip",
            checksum: "444e3d64212394b18201451e88066b8e8f3058ffb0963ed53db94b4dc1930484"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/DouyinOpenSDK.xcframework.zip",
            checksum: "6ad15f991130a1e7da601c0afa2285e9d6a28449b8b7253c86db341c0922e35c"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/FlyVerifyCSDK.xcframework.zip",
            checksum: "27c18fecd8b82d35b294f978e661fb16e77f22968e704b374d986eb0891ca2f5"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/FMDB.xcframework.zip",
            checksum: "091f2a6a964e2a28604a91a79fb9b37e1b992dd3ee45907b9b354bf80e109ee7"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/GravityEngineSDK.xcframework.zip",
            checksum: "0a9c6ed3aff70143267c9c72084aad76efef57f460e0e74f1907a9d430bbe6a1"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/KuaiShouConnector.xcframework.zip",
            checksum: "165cb3991942ba6ae93173c55726511b4408226c8122df78fdc815800aaf0f42"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/MOBFoundation.xcframework.zip",
            checksum: "6d1fcd94eb927158e70030b349ece721551c6f9f1db84b72ba8d030854a0a291"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/OneSDKAccount.xcframework.zip",
            checksum: "2315856a8cb49f5c732cb1289f5d523ee53291eb207244935fd3ff1e7800c458"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/OnesdkBaitianFramework.xcframework.zip",
            checksum: "59cf02c0ad720960e098597ad67c97d1eab4da883bded952762e8c9a41c8aaa1"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/OneSDKCommon.xcframework.zip",
            checksum: "9cff65b25c012000786d64678a62d5004cf6f99aafe5545923dedc69b4cdef00"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/OneSDKGravityEngine.xcframework.zip",
            checksum: "b921ac8b974db8d71b189fe7a98f62222aaa3f410d3afc53d458ab4e50f29c71"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "25dce27d26ce622baf4c718d5b8a9af7c2e89ecbbb88e40e399b5ae3a6215d06"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/OtherPartySDKFramework.xcframework.zip",
            checksum: "7f244e19dea12318c72595515d8dead8b9692c380202550885031fdc0da8453f"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/QQConnector.xcframework.zip",
            checksum: "85b18c99d6ce8bb1700d5cffa059b9b614b4d68225d5c52d4043bd579f0a516f"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/ShareSDK.xcframework.zip",
            checksum: "a034c38a47c9c92fd34bfecc1389b9818ec5a271d5578ef1ce003e25625dc259"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/ShareSDKConfigFile.xcframework.zip",
            checksum: "289fb5d1617e61a8b9e19ff9bf8029099a4409e4ad1f6ba162ad9532231caa50"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/ShareSDKConnector.xcframework.zip",
            checksum: "c3e85ba6ae939ef636be506cceb1f040826f7a9704d9b2cca4bae5afd78c9992"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/ShareSDKExtension.xcframework.zip",
            checksum: "a80878e64241bf7068e6594a415d5a044c3300f48748e638d096093e7d3cd2f3"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/ShareSDKUI.xcframework.zip",
            checksum: "b5199a69fae9adde46fe9ef099acf1bf0198f25ef8a5506fa5ce57997c3f2b80"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/SinaWeiboConnector.xcframework.zip",
            checksum: "d876d6262d4f8a8e46dd6c35c3963adc04fd7ec70b32cafcf60eec9283168bb3"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/tapsdkcorecpp.xcframework.zip",
            checksum: "6890e6869f9668f732b37bd502d9a554b53fe5cdd212fd321eb9671d8c8ba9af"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "c6c19b96a673d2677808d046aebcb186b4614fe7e69fb7096941f871e312bfdf"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/TapTapCoreSDK.xcframework.zip",
            checksum: "693308d236a0554bea1408403e0acc1547a74d6642b936b1f0939f1be73b874e"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/TapTapGidSDK.xcframework.zip",
            checksum: "fa9b7ca44553236c0122978c4e75cff60726a9aa201fb747e07f7dabaa3a7d9d"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/TapTapLoginSDK.xcframework.zip",
            checksum: "5c993ee1580a39e4abadfa3b87cfb50ff99821446a9f0ead3c9b4087b926cf29"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/TapTapNetworkSDK.xcframework.zip",
            checksum: "2ce425f40c22f21ab7b11807d69445769400b74e06c90faf8ffd9cab67f22598"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "d2da888fd61f5f43d87e21c7df8626e6f15022041ebe6d56779ea2248db92028"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/TapTapShareSDK.xcframework.zip",
            checksum: "1a2e8df453695fe093e1b72c60b7915ee77d722056b10569e418f12fdadbad92"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/TencentOpenAPI.xcframework.zip",
            checksum: "9ed8b8bba569420847a1f14a7c081d7c30a5bf3e06a9b4433ce941f222d92af7"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/THEMISLite.xcframework.zip",
            checksum: "76f843d3542daabb6c9712e2346845f4650dde3234a57b17c8336922b592ec1b"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/UnitySDKManager.xcframework.zip",
            checksum: "cd3bcaee9481039815b66e0d7b209b6d1461a0c84cf19b974fbbdc140ced5c77"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/WechatConnector.xcframework.zip",
            checksum: "4ac79fff0eb7b481c6a7ecfab9330704bd793f7d586094ae72a5b51cb19a6e82"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/XHSConnector.xcframework.zip",
            checksum: "fe82b6beee72032f9e69cd3fa176dc63a54e03af873986287955a657d9cabb3d"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "c43fefab2f2dbad9167c4a296524bd68fdaf72858073e6cbc3c63cb3ce2d9a11"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/YTXMonitor.xcframework.zip",
            checksum: "9b3c9cff8f470e72b99a1d4820a87c38f736130f1a58b7bbbf0854476dccd091"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3/YTXOperators.xcframework.zip",
            checksum: "f22a5d7387299cf9245ea2be5db7bef73c073cc736daa7f1ab7216d0c48c3f0f"
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
