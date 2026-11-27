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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/ATAuthSDK.xcframework.zip",
            checksum: "501dd95c46284a213dc769f5ef4ea48a889c2148232d38deed5b97b4e835138f"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/DouyinConnector.xcframework.zip",
            checksum: "b517daf0e974a4617481568467be4aa6c2c37cc90080b19e5f4b9d85832617b5"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/DouyinOpenSDK.xcframework.zip",
            checksum: "675d90fa51ce2035320b244a2292b79bd97126cb4b1c5640410a63b2a47222ce"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/FlyVerifyCSDK.xcframework.zip",
            checksum: "7917660ff1708f6448fbb5ba8be9f94995f01c64b63638d1a3834783f5c5340c"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/FMDB.xcframework.zip",
            checksum: "6a886023723b83352af741ac7dad1d88dbd4078e206365d6fd6cf718f0ee73aa"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/GravityEngineSDK.xcframework.zip",
            checksum: "be0e2d83418cc6abd1fc2eb6dada5ebdbb0edb4cb74051d2f7eac86b01fcc007"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/KuaiShouConnector.xcframework.zip",
            checksum: "38c84122fcb75f6588fe405b70c25418a1ab385a8b9c262b3d30902f2cd6ae61"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/MOBFoundation.xcframework.zip",
            checksum: "4a8cea68f5508ac8f2abbdf322cf74a493a70a5da1ec99d1c207b498d2180818"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/OneSDKAccount.xcframework.zip",
            checksum: "061ff5bff21f0bc3899c40cb55969fea8efe318d644aa0c43c73b7a7f0c96355"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/OnesdkBaitianFramework.xcframework.zip",
            checksum: "8ecd8d98661313009f462ba47efeedf31affeb6086d0da3900a9555fd7666209"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/OneSDKCommon.xcframework.zip",
            checksum: "838c0d3f5cb867cf439241b2eca65901dc81d6b5abb0727f846e4247cb7c68d8"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/OneSDKGravityEngine.xcframework.zip",
            checksum: "66ec1e8aef16e546f359ba68be720dda1fcc5ff85ed9fb9ca496204fa692f7b7"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "320a4f6ac6ce12dd12e0f178210bc4ea445e3af61f1571cb4fb0a195d08c1d03"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/OtherPartySDKFramework.xcframework.zip",
            checksum: "70fe5de369d4da480b12af34d8264875bfa1f5af6f0c37a941afd3ce21deebe7"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/QQConnector.xcframework.zip",
            checksum: "6b0bcd2a04901a02efddd3616e9fdbfa2cd595c509d3a6c45b7a57c40ca31589"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/ShareSDK.xcframework.zip",
            checksum: "0df1bbfda8555c31112d1fd111d5151bb75350817c808526292ad2cc6377f9db"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/ShareSDKConfigFile.xcframework.zip",
            checksum: "e9120fbeb2fba58b823269cffa1897d02b55b7e3be14ac7a6e7ea0dc24129370"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/ShareSDKConnector.xcframework.zip",
            checksum: "f204528b0eaedadb352c0d6f047d0be9537b9d8bf55642f892db146d65d15f7e"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/ShareSDKExtension.xcframework.zip",
            checksum: "013871c0cc6fa9fb89fef8f5f874ef07c96a925b89d7ee0d2b3c43f6bfd4d7a4"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/ShareSDKUI.xcframework.zip",
            checksum: "ca5d853eed3a91defb6591fea1e13c3ef75f04e40b275302be66136fdd74f2be"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/SinaWeiboConnector.xcframework.zip",
            checksum: "d1e1233f54137cf95eeff924895ff7259b5f8c6ee86afc8829b26321d2435c74"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/tapsdkcorecpp.xcframework.zip",
            checksum: "b8f8aa4ed896910bc7bba7a350dc319deff5818b5288ee158dbe3f39fc11faea"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "3ddf24ec3a35e3704cf27fe73d95355a7a5b28956f664d2de15ee063b921b0f3"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/TapTapCoreSDK.xcframework.zip",
            checksum: "9d41c1150ad1fd511066354b33d382ebfc08177b1e6b3ed03fa7cef8e0513254"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/TapTapGidSDK.xcframework.zip",
            checksum: "ddead8f3a4751c209ea125a65e0b25ecb4e1831eef158a58925ddb909e4e3dd0"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/TapTapLoginSDK.xcframework.zip",
            checksum: "3b047fb456cfa9382daf6f46ae5dd71fadf446d3f7e25ee01660b51711cb59cb"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/TapTapNetworkSDK.xcframework.zip",
            checksum: "ef8bc0f120bd43095da5c3c492cfde492947919f0f6d045bb08828c4dd3c9547"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "907d6c74577a0c965efa3f3c5f84e3d51703ade18fa513caca2fae32eaf60926"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/TapTapShareSDK.xcframework.zip",
            checksum: "c82c941165765c24133f3f28570c05a32ead4257db3472011e44a2e625442efe"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/TencentOpenAPI.xcframework.zip",
            checksum: "c6b4f63f075c6e42251a785a86f82e527d9c643e7877f7b1f5cbe333ae6098cb"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/THEMISLite.xcframework.zip",
            checksum: "ea564120a54472b2686a0cdcf47f9606ef38d251ccfdb7020a3cd1fb667360b6"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/UnitySDKManager.xcframework.zip",
            checksum: "e0f7aee1cf28bf0109336c3a7eaed44d7fb30d21eba1e581754c771d76a893bd"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/WechatConnector.xcframework.zip",
            checksum: "da74d48f564d713204ba56e1abeea2cbb96f5d429b95d4224670342bf486dcd3"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/XHSConnector.xcframework.zip",
            checksum: "c543b2603342ab71328234fd736afe8339ec5938c59baed0ca50e30b13196310"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "9ca6c5500c8d7b60d28347ead3bd26a1db0f603a4b771ca36e27d49ea2248fb1"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/YTXMonitor.xcframework.zip",
            checksum: "c2daf3595169e72c45895ec516f3cf001ab73626974e4eed0fa12035a564101c"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.5-dev-1578038/YTXOperators.xcframework.zip",
            checksum: "d375bbdd73e6761644adda6ae94cb215ce90a560e1f7e2c9bdb1ba66c231b6a5"
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
