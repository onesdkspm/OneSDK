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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/ATAuthSDK.xcframework.zip",
            checksum: "2468daab1309ecb5f8f515ea0e0d226c8e27fb2b9e9755a05a3b10aba0e60332"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/Bugly.xcframework.zip",
            checksum: "c37b2388ff1ce4ef67cac2005638099e507318950e35fdf276696f16c6ea698b"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/DouyinConnector.xcframework.zip",
            checksum: "f259bfb7e945032740d1815301a2f573fa22503ed37645a43e253c9517584217"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/DouyinOpenSDK.xcframework.zip",
            checksum: "6f0daac55cad457505c5c3a80a50dfcaaa7e5a78fe49cf150ba27dad92dc1f79"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/FMDB.xcframework.zip",
            checksum: "4d860d32b87122b4ae6c31a0b74f60c8fc84524a26a6cf3430fe6e4522ee9175"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/FlyVerifyCSDK.xcframework.zip",
            checksum: "20080ff45ddd383d31eb8e309dd467accb0515f05cdd8c5f64b38d436e73a659"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/GravityEngineSDK.xcframework.zip",
            checksum: "965b2ff8738d097b791609754fe7577a1c626d552e543f270d5e0f9098548595"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/KuaiShouConnector.xcframework.zip",
            checksum: "d29a13dc7a149372c79e18b9b5f44f79e008f147d8ffb29f84d69993ddeea964"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/MOBFoundation.xcframework.zip",
            checksum: "93ebadd85ba924852f0c6f9c968ee24afe81a425104aedef132995ca92e4121a"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/OneSDKAccount.xcframework.zip",
            checksum: "833b9004f63741ba5105f51cc26eeec8dfbc33a05933fc48f105fec21b6e6d81"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/OneSDKCommon.xcframework.zip",
            checksum: "891ed80e95fa95c41939e890118413b63722cfce887f1ff6bc588f55e3fcbf20"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/OneSDKGravityEngine.xcframework.zip",
            checksum: "51218bb8fe6fe724e3c68c8cc82bb1820ea3ec30c24d684c08933ce80cb3444a"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "ae2a9476003b2c79026c0685addc0a6be42b51eaf14fb0b94b2b4f5fb77b4baa"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/OnesdkBaitianFramework.xcframework.zip",
            checksum: "294a247a41585b9e7916a37eb97414c3d879118a4949c261e6db5ccbfe5acff6"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/OtherPartySDKFramework.xcframework.zip",
            checksum: "5cc1e88385ae3296cbbc7c5572c621143113cdaa303286b4d5ff2aea0e597bed"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/QQConnector.xcframework.zip",
            checksum: "3edf64aa2d36f46f4d9ecb85a049284c840f586fae431eda52958a702c2285b4"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/ShareSDK.xcframework.zip",
            checksum: "d3d05af5e847a6603f58003cc432ae81a65b21cfadb420297efd257c92711a2b"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/ShareSDKConfigFile.xcframework.zip",
            checksum: "55cb9b996cdb7676925a6eb10c33ed7eb40148e851299b71a07c1dffe7d6fbcb"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/ShareSDKConnector.xcframework.zip",
            checksum: "15960ad0c3c1698621d9e2af5d5dbe8ff0c73c6fbe83df5110069da2e4bd66b6"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/ShareSDKExtension.xcframework.zip",
            checksum: "9794c4ac8e4e78715b4f8ef5e63bef07e5baac67d14629449e929fea3c3a9d54"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/ShareSDKUI.xcframework.zip",
            checksum: "183628967e7d11e12f077399835723089b81b621ec35882196bdf10498dbe87e"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/SinaWeiboConnector.xcframework.zip",
            checksum: "87206d758f2bea67221720d2edec1e0d10408aea18ad6ae261485db08affd4f9"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/THEMISLite.xcframework.zip",
            checksum: "56cf516248a336c984bc36bca3558b9b1699fbdb13b74a493494b15b68a2b5bb"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "efb5f33967f92d22524ea0066effd458fc115e559fcca21337e27ce52b2b152e"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/TapTapCoreSDK.xcframework.zip",
            checksum: "d55159ea7f0849397d772adec0d14b58666008e5f6102ab112849e998487d295"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/TapTapGidSDK.xcframework.zip",
            checksum: "51a096c8aa557d1fcfdee4af2de2e638b5cacf22c17bbc221ed563c5d6a69d09"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/TapTapLoginSDK.xcframework.zip",
            checksum: "a02898083c7e8dfd492e624e4f3d9df62d9d8c1b6da25cbaa882a349b74ac84e"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/TapTapNetworkSDK.xcframework.zip",
            checksum: "700ef2d392d7b7c65fa5861da676d1ed01530da34b200114f101b62a1f3e9961"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "e4643eb669e9bc228c839623209bedd56140b1813b8865d855ec31acd772f9fe"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/TapTapShareSDK.xcframework.zip",
            checksum: "182ca1f4d4bce8e7e41f863d5fa6950de2f4277035619af4e95f572547f1c28d"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/TencentOpenAPI.xcframework.zip",
            checksum: "6d5e7ae18e5e0e7e7cd5aabc9798c54c046c9b3cc8e49aebc4a5e66be7f7dffd"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/WechatConnector.xcframework.zip",
            checksum: "ce20526f83734f764fe8180759ef324be3a2d83c56d1b45084a72f1ad7b7aafc"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/XHSConnector.xcframework.zip",
            checksum: "3b425ff098d3a4768d232e2df5ee40904ff810b7b4f6dd7b51cc0db593bc9c59"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "31693b788862ec2a64b6abdcc8700983d11211582d6982bf373857c994822d9e"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/YTXMonitor.xcframework.zip",
            checksum: "cd530867a03a5c2ac575cde8c4083478ee41b9e8901f5099435de2ccdb0dad01"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/YTXOperators.xcframework.zip",
            checksum: "24139b940da7f7f5f0a0f632ba9d798ea7a4d4da5ff005f69819c7d5855e3954"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1400755/tapsdkcorecpp.xcframework.zip",
            checksum: "9c02708a81da141b5b60a6d55da07bae09583af1f73626c806e20e3add193663"
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
