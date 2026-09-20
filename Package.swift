// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "OneSDK",
    platforms: [.iOS(.v15)],
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
                .byName(name: "WechatOpenSDK"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/ATAuthSDK.xcframework.zip",
            checksum: "b73edbe44cfad97738a94d7fd2a041e6ad889d89b2bfb67b4a71b16e26dec58e"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/DouyinConnector.xcframework.zip",
            checksum: "88b405bb46270d7dbcd66cece47de8bc9a680548b433c461167efc7912eef269"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/DouyinOpenSDK.xcframework.zip",
            checksum: "5d5717b50dbf8f57c9784dd69f1452718cf018ef4dab0b17a48ed42d9d6d8b3f"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/FlyVerifyCSDK.xcframework.zip",
            checksum: "55fd7ed57ca8e1cecd1d5c4ed68c351f89353f1c8b2b9a8b5ad0f4b57716d098"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/FMDB.xcframework.zip",
            checksum: "adbae87e5d0d387cdfaec885a4462086a009c36c6505afae80ca9d384fd322c0"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/KuaiShouConnector.xcframework.zip",
            checksum: "4dd9895c36a42d381ec88827bdf3a4c499adf95aecebe3e74ce946331221dda4"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/MOBFoundation.xcframework.zip",
            checksum: "cdfbab39fabf739fd4235172e7b2d4ee793381edaf55193ad4f66a02135aeae1"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/OneSDKAccount.xcframework.zip",
            checksum: "827c28cfd052dd6ded935bf1e5c24f82031169530ee791cc070bd70588c66914"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/OnesdkBaitianFramework.xcframework.zip",
            checksum: "ccc108cc77bd8af64bda91cd119aaffe67a6991bc0008102a8cc3ebf891f4ddf"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/OneSDKCommon.xcframework.zip",
            checksum: "e7d0990f18a3b71d93eac16eeb1a184bbf3e25a2f41370f4085d27bf68e1ad85"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/OneSDKGravityEngine.xcframework.zip",
            checksum: "1ace2ab150df022b75c047975a4671870d45da629814cea30eb2bc6190c5cbe7"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "94b063aa18fc7ebea6dccff68c7c4c56a1b8b1b489a46a8994e932e010319531"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/OtherPartySDKFramework.xcframework.zip",
            checksum: "761be92098a6e19513088c5a57c9e1b093d57f4620710acc599b908fb2bd2e0d"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/QQConnector.xcframework.zip",
            checksum: "7c694e444eb0fb777b84ba4fdd5584dd5249043325e1820c108f6f0c41e7bcb3"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/ShareSDK.xcframework.zip",
            checksum: "5d99c20d9358812edf9a224cf7f915a1be4928dc38a9a79644c1113131e8afe6"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/ShareSDKConfigFile.xcframework.zip",
            checksum: "98ef5c7176f9cdde646471653c244c2a7822a8bc7ba427527b061a2c1d70844a"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/ShareSDKConnector.xcframework.zip",
            checksum: "e3e539a5dfaf8b1c39af60fa5596156a6788f11d4c6c6a10016ba39513dece80"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/ShareSDKExtension.xcframework.zip",
            checksum: "d0124af0e1bc1a9ebbfa55d2b4f01c20b3eafc553666bfbb7d68d66fd6b83869"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/ShareSDKUI.xcframework.zip",
            checksum: "72d418799d32f1cc58c1ba57b407bbb8f6dfcc8b28b3d7c6de7f4c9e515b72a4"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/SinaWeiboConnector.xcframework.zip",
            checksum: "86e0c62150fd0a388865bc6a49c360d9cb109af63fc4d5710109701a944c9326"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/tapsdkcorecpp.xcframework.zip",
            checksum: "78550af40aec2a9f67c5cd7ba3b43eb191538af7c4d769ce684d43227b794a47"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "ebb34ae596b96f16ef1d223e2263fbf10b047174b14841fec7675f3e29d693d8"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/TapTapCoreSDK.xcframework.zip",
            checksum: "bde0f19b7e6bb6a2abcf9f7674e9fa7b0c8c0e3812a2ea99689ef79d53013361"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/TapTapGidSDK.xcframework.zip",
            checksum: "b89b53b44a9ee8a9c5d1367898d3dcd95c175e2db7eb85e6e0ee5414db869ca4"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/TapTapLoginSDK.xcframework.zip",
            checksum: "d79329504e4c58cef68a67e45a80cf77ff8de8c0ba7069cdbf715a44b28378cf"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/TapTapNetworkSDK.xcframework.zip",
            checksum: "efbd86e8f3497bfda494e94520631e1aeabcb78e4ed8bf10f00feeaa39ba0722"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "42a720749c78acc347e1c902d02af57f115e05e64a4b41e2bc5e580cea457ebf"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/TapTapShareSDK.xcframework.zip",
            checksum: "57809cc496e1ff5534ff50e9fc21d1906f1c5186a143c16586ff3c439e39e5bf"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/TencentOpenAPI.xcframework.zip",
            checksum: "5f2fc984a83e8b56c3aff959d1c3dfd4ba7bce954b87752a2fb6e42e0e5e1b92"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/THEMISLite.xcframework.zip",
            checksum: "7be598fa9f67550277122b4c526dc28d885ff1a54312234fcff50b31b6913428"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/UnitySDKManager.xcframework.zip",
            checksum: "d521738a1f9f076423b63f1c278dfc9e10560a3900ea20426b094647154ea1f7"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/WechatConnector.xcframework.zip",
            checksum: "10d2833ecc785287b5f845c598a9f6ec30fc7df21d338eed81cdfb36934466bc"
        ),
        .binaryTarget(
            name: "WechatOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/WechatOpenSDK.xcframework.zip",
            checksum: "5dfd559b6ff464f3fb5aa2ee7f13ccb7e3f1aca8b0f36424c36f46a1e2179f97"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/XHSConnector.xcframework.zip",
            checksum: "145ffeb51d7e98a9dee3027ad90b607dd85e2ca8c388e1cf8e05e18d9a4f6dcd"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "7ef7ee25a622d92bfa89ffa6db03a26f238ace2e506803ed35305c71751976d8"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/YTXMonitor.xcframework.zip",
            checksum: "d25945ce71533f7ccc416e745fbbe063846b43590a0fd3e5c5e48f28d5b1961e"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532181/YTXOperators.xcframework.zip",
            checksum: "f822dce449dd712f854111373e87c0ffdd60f8fbcae294a909bd3891f990597f"
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
