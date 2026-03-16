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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/ATAuthSDK.xcframework.zip",
            checksum: "c4c79de35adc730e008b68f6b7108dd3585ac4e740dfc711e8d66d491dc28e5d"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/Bugly.xcframework.zip",
            checksum: "25db518a2cbec16771ca56fc7fbc152c97fdd8dc99c61b6d546e2007a03fa777"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/DouyinConnector.xcframework.zip",
            checksum: "de20e893f81ee744fc7f1e4d3d4786792e061c2a3371e77acb6df119e884ccf7"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/DouyinOpenSDK.xcframework.zip",
            checksum: "1de1c483706fdbeecd6bc3504bdae3d4180c56a5dfc60a23830332013fd82e6f"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/FMDB.xcframework.zip",
            checksum: "ab9bfc8c5809933e8670363ffb79494f1a4d481252484d738dcfb80cb630774b"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/FlyVerifyCSDK.xcframework.zip",
            checksum: "48bd1e581dff6ffcac87eba88652a0622a728c4efc7859b7bface65edef3fcbc"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/GravityEngineSDK.xcframework.zip",
            checksum: "0964fced74a34d5de17fdca4071d17f47e2cea4ce07960d9033c42e21c6597e2"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/KuaiShouConnector.xcframework.zip",
            checksum: "1116eb17ba882232e2c599bdddee2bde33aa8bc2eb4a8117c3b36ebac6fb4c76"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/MOBFoundation.xcframework.zip",
            checksum: "03867b5d34ebbaa690b03ecf0201425eee53b14d9b732bfb12ffad25559261f3"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/OneSDKAccount.xcframework.zip",
            checksum: "4fa8b7a207d5235c7c8d3afa669981b111a784fd9162fe788de3a0e3f50c1e99"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/OneSDKCommon.xcframework.zip",
            checksum: "211af7de8ca0b17a6f08a53c83868af16d658ce431966fa2fed426cf11bee9fe"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/OneSDKGravityEngine.xcframework.zip",
            checksum: "8df35d5494ede2f798ce48f1470053158f468424511b80805e27c874b06b6bc5"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "126950804d18d32d639344f7aaaa70bc8d7176b1a35e381155602e2c247a8231"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/OnesdkBaitianFramework.xcframework.zip",
            checksum: "f6dc0737a55c5ee65bdee4346b63855220de3200d422be9e12c485fffee7844c"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/OtherPartySDKFramework.xcframework.zip",
            checksum: "a78eae7fe836eff6957aee51ac63cf30139d5c985b3575b2663ecea91a40dc27"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/QQConnector.xcframework.zip",
            checksum: "f98d46e69dbd0a4c981a21d92afa6b11962b9093bb1a05106d5a600b8e2cc6e5"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/ShareSDK.xcframework.zip",
            checksum: "596957d04507b2814f4c94afe2812690ae26b86ca1574973be0d73b6dbb5301b"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/ShareSDKConfigFile.xcframework.zip",
            checksum: "6e902e97493aae0a841523acfe1c64240a0ac3aed34c6ae48af92a95d6625f93"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/ShareSDKConnector.xcframework.zip",
            checksum: "0b8caf7faa865ff31c328be6ce303c92c521e3326f12d905a67e46d2dde8c892"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/ShareSDKExtension.xcframework.zip",
            checksum: "4c353c3f45dc6cc2c4575d6a422969b9f0f1778c4559089138565cca4c5345ca"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/ShareSDKUI.xcframework.zip",
            checksum: "0e60705f5e1a183f0d7dd9aabdd3074fc78b47aad2f8d27bbd89fc1a11ff7664"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/SinaWeiboConnector.xcframework.zip",
            checksum: "cc4331413084a8ad9d22a258dd33a5a6e4d232d00b7e370dc175945d8daca4c9"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/THEMISLite.xcframework.zip",
            checksum: "953c748cba1b82028238d05ef401570920359aea8c28ad800c91ad5555a0feec"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "82e25943cfb1b710f47ce895179480d719d2f94c00963fc85e0d89d689d34289"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/TapTapCoreSDK.xcframework.zip",
            checksum: "44467161d3490e39ba4650927e5029006b29acf197a42dbaff9e2084deb57a39"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/TapTapGidSDK.xcframework.zip",
            checksum: "8383464f5e17c5d132292197cfb989b94aa727f9ebab3f19d0b2b84346d522cc"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/TapTapLoginSDK.xcframework.zip",
            checksum: "34458059f234ce877a9d3893521d6b7b440463582f620edf11fc6999064826bb"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/TapTapNetworkSDK.xcframework.zip",
            checksum: "284d32b7ba8aa5f1c4ec33bef53aa0aa10fa2cf87a616af92f20f4925097417e"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "4efc9d7112dbc371a6cb6da5ea379e07db8a16de33041ce52ea6fed771e91be9"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/TapTapShareSDK.xcframework.zip",
            checksum: "33a8d1475c8cb7b97f9b1f1e39570fabaf98837d47f9e0639294cc2b02b591eb"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/TencentOpenAPI.xcframework.zip",
            checksum: "777d52b1caf71c25b33ebcab4856407442d79051a3c40fa9308f93785e93fb19"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/WechatConnector.xcframework.zip",
            checksum: "75831c11c2a7323c1986a8152be8cc7b0b5caf43e9555cc8c4d886b66056f282"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/XHSConnector.xcframework.zip",
            checksum: "f4cb0b6b49608e130e3d1680993dfb798449b74c962feea16f06596841ceac3e"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "660864fc9440aaa826dcca64145657b13b53af4cf44ebf51130dee25f127a3f5"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/YTXMonitor.xcframework.zip",
            checksum: "6314345853fb55d5f50a2116e6e2c0704da13c06cc5f629757f4165be1c6bfa2"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/YTXOperators.xcframework.zip",
            checksum: "67d47b75d2d9933804cb62da6a173cbd8b3b8ba421a8097af0644280a4446d43"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1399471/tapsdkcorecpp.xcframework.zip",
            checksum: "fcfef4da95b36073ef3abf41616d38ce752f77d6b0465c7013a2b7f14f3bcffe"
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
