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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/ATAuthSDK.xcframework.zip",
            checksum: "61781770b4935205c3a68c792b8a1e95784b6f73aef2c0b442c32cf7e81db99c"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/DouyinConnector.xcframework.zip",
            checksum: "84c99b8a71ebd3fb9596647a907b44fffad0a16444e6a5487d3ff5c9fd98dbc4"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/DouyinOpenSDK.xcframework.zip",
            checksum: "204d1a53e6ba281975b00f7ee756ef381ef81806c11242c4e7fc1dc89ab80301"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/FlyVerifyCSDK.xcframework.zip",
            checksum: "864e12c0d18a9d4635eecefbd05a01ba863e378d03986ff35fe5fc4cdb566305"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/FMDB.xcframework.zip",
            checksum: "e55485708578d96f140ae12798feb7f971d020b2ec8394270c61cf59b01db119"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/GravityEngineSDK.xcframework.zip",
            checksum: "94c7c0a9045c323ee0cc2e57131c71b43357649a594c84ec586e69eb981415a0"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/KuaiShouConnector.xcframework.zip",
            checksum: "df4bde7e56aa967c9c5aafbe5c0047d2b7eab7b3d3ea84d9ca8a6adea07c6d25"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/MOBFoundation.xcframework.zip",
            checksum: "7d007ce281c78ecd8e9d09056b2a1407a3874c065a545ebecf1fdba395b285c7"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/OneSDKAccount.xcframework.zip",
            checksum: "93969c4dbfebb73c282dee0e9f2f79ab195725a66f2125dd37728abfadca77c7"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/OnesdkBaitianFramework.xcframework.zip",
            checksum: "d971366840327201c36804337fa96d9f3f5008fa0337b7b2583e8c34640e9e57"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/OneSDKCommon.xcframework.zip",
            checksum: "7e68aa7279a5104e234e27f4ae758b6edd8638e1577c8cf5ef7095cb58d65b2c"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/OneSDKGravityEngine.xcframework.zip",
            checksum: "9085f4c27965d62aa812e894f63ff1429ffa3b8eb361e74c9326281d4e365657"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "e769d4c22a5afdb39fdc3a663a4fdea87a28f529f3a7b00e0088546f18c9b101"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/OtherPartySDKFramework.xcframework.zip",
            checksum: "59b66ed8ef32333f7405523421f804bf4aada5d332a1568ef3e385bee28a7237"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/QQConnector.xcframework.zip",
            checksum: "c598e9c350bfc25c7cbb1232e67bb228e0763e64b475ae16cb4118d6639d40b0"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/ShareSDK.xcframework.zip",
            checksum: "786d648276e4ada2130c73f19295544df9424bcae60817704e3570cf97d14892"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/ShareSDKConfigFile.xcframework.zip",
            checksum: "55823b86c68780663660c8b46456d46558f209fcb449dbf3d42ce984bb2e8247"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/ShareSDKConnector.xcframework.zip",
            checksum: "36cc174ef9a53851b6ece992f9176dd01a3961e6cdfc230f68b8a7748f534f82"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/ShareSDKExtension.xcframework.zip",
            checksum: "17db2ee29d1dc2be01cd2b0295952375b463c02b44b7659b4f4c298388525bf4"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/ShareSDKUI.xcframework.zip",
            checksum: "2dedbcb1ebcbfadd77f09a59a3c8e89eeb79c71d344117317e61dfc170d94643"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/SinaWeiboConnector.xcframework.zip",
            checksum: "7b7745e84f678145460a2bc3f69b53623f94caf3b62122dee45fbdf5e739831e"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/tapsdkcorecpp.xcframework.zip",
            checksum: "d7caa281e469289df683640c7753cab66674961dd10e320b654896ccc71e42fa"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "59541938e79e9656be740d1bba051842710fa6ead9b16c52a981146115b6efad"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/TapTapCoreSDK.xcframework.zip",
            checksum: "e8547f15f88aedb8ae52ff9a350f00346b892944c159a94068e77ebe3b2b56f3"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/TapTapGidSDK.xcframework.zip",
            checksum: "b3319ebfb73aae20ccf4f272e690c8ea539d7697410edfc1b85769bbc174e321"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/TapTapLoginSDK.xcframework.zip",
            checksum: "6f2e15f0c32bd9fe78df589ded78822512ac76b71be6a70a2140d360d0d5ae82"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/TapTapNetworkSDK.xcframework.zip",
            checksum: "381f886dcfdb27fe6cf9b0b4aba93a4c2631cf58c32c708fc3da77eaa729a36d"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "b6ec1de19cfb0e6e2638167eb4a1199662513cfa089b35738913521917ba56e8"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/TapTapShareSDK.xcframework.zip",
            checksum: "e4d9241c07901844e87a5c41b844c66bdb82a138318ddb33059a504d72aac175"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/TencentOpenAPI.xcframework.zip",
            checksum: "fe2d16a2438a0377bcb044a2d596e187fbd981e397f25f3fcdf096b326c711a4"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/THEMISLite.xcframework.zip",
            checksum: "e7f56d7600cfec790f98973fea2b84bee8edcda1b422e7ad80258e2d54f180bb"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/UnitySDKManager.xcframework.zip",
            checksum: "b14f72d92932f849daf28f608667b2f4247e191c5ed67f51c01f9bc3a506146e"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/WechatConnector.xcframework.zip",
            checksum: "54a21c95f5a7f790cfdc39f4e3596a94b731f48cc5fec258f012c8d1bd99bcd8"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/XHSConnector.xcframework.zip",
            checksum: "80514354bbc9ae161b3a24ce284e1064c73be3d96be79ef8136f4cdcc8faef2d"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "7ee1743b7f63cd57b004a0e7d0432cd11ced825445668b73ae72333f7e8ef862"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/YTXMonitor.xcframework.zip",
            checksum: "38b5b54408707ec7f320f8faf83ca7ad6fec8a5a35e946e6c7070a36a804e7e9"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1563691/YTXOperators.xcframework.zip",
            checksum: "6d43ca219eac52ddbe5f696f4dabd7927f7364121e73b7d718e81b8e64b0f0db"
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
