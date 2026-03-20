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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/ATAuthSDK.xcframework.zip",
            checksum: "c97de89caa21ce46fe25e106b705146a97e1901146e9f441ed472e4783e2eafd"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/Bugly.xcframework.zip",
            checksum: "dbb52ecbf2c2e8b1fbfe5458dd1b35416d4942e2524412ad4b15a6fc3c473045"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/DouyinConnector.xcframework.zip",
            checksum: "6c24a6ef968b945d9f0244ad2cdd2e760c13526b0963e9c44391485d43dd6b23"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/DouyinOpenSDK.xcframework.zip",
            checksum: "80ae8ebd3f29d9333c4efc08f5f4348d4691032e39882335181bbe3be19ce3cf"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/FMDB.xcframework.zip",
            checksum: "b1186ff5b889b8f375c872334ccbc734ec90abaaa670b353fdc078495f7009e4"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/FlyVerifyCSDK.xcframework.zip",
            checksum: "bb323c0ae7713c2a06f7d30664afb017ce74faa91c1c4fe59fe699f0305017e0"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/GravityEngineSDK.xcframework.zip",
            checksum: "86e380a7afda0bae1801f13ad7269ed30764085a219136b0474b399754e17dad"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/KuaiShouConnector.xcframework.zip",
            checksum: "66250e420ac75dcd3789a1789e862532fb6e6ee0710763588f324b7b788a426c"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/MOBFoundation.xcframework.zip",
            checksum: "568cc7b2b666527e8a5206f4d2f91c8f7d8c91b6cbc0953b98e34ae9c1196108"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/OneSDKAccount.xcframework.zip",
            checksum: "65cf03d429cb7cc2f2b9688dbb50025b107d71c3b71e2a78d53fc7e2429e9cde"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/OneSDKCommon.xcframework.zip",
            checksum: "32f98a33271bcf9dae391f2865882c2438a2c1362b580749881c1ac9312cff19"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/OneSDKGravityEngine.xcframework.zip",
            checksum: "f805d4a0c9b6d9e3f6c49bda009969a060aac5a824a35d482b0c4f333babcd96"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "c3e879ccdc871c4d4c475514ebcb119a432c9ba9d35a44728b598fc97691c404"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/OnesdkBaitianFramework.xcframework.zip",
            checksum: "821e7a99f75d63105a75b6354a7e02a7bd6400828dfda78f71e61c00dcd848e9"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/OtherPartySDKFramework.xcframework.zip",
            checksum: "f9f4b7fa6c6d04f688b7366179d8092a8f2dc77c1e5390e6b7687b873dedb816"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/QQConnector.xcframework.zip",
            checksum: "bd4962b200d256b7cf6e0dbdac7a06dcc769812217dfb4db4acff2ffbe739eea"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/ShareSDK.xcframework.zip",
            checksum: "0dd741d76bd84a817823477df84a904deec950b89d09ace0b88a4901241c5c03"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/ShareSDKConfigFile.xcframework.zip",
            checksum: "f2d2584e2e2f6910be324842a578b9d72532e8c47a871a95e66098095c38901b"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/ShareSDKConnector.xcframework.zip",
            checksum: "ef85766161d9ab280679cc857182e8d0566fba4495fa9b8d1e4e8125a26bfb38"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/ShareSDKExtension.xcframework.zip",
            checksum: "900ee1fb1d8130e448563564be2032ad4c30c5b25f1b8618798865f83c188c1b"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/ShareSDKUI.xcframework.zip",
            checksum: "7b685e6c08602c3d8f2f7612d070513284389f7a2b7c9c205e48457d429ff233"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/SinaWeiboConnector.xcframework.zip",
            checksum: "59e1094e751f5a8ee31335718cf22ff7a0022dd7e135bb4edf65e2656cb46706"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/THEMISLite.xcframework.zip",
            checksum: "4d6779fff483bc410ad02d104664cb8fe65aff2aed119034281bbf9e16403234"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "65519c5209e08a4fdd061b76f0a781a797e36ccd0759e73886a86b538670ab5f"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/TapTapCoreSDK.xcframework.zip",
            checksum: "8cfe55fea5d285430bb6e1bb5beef7326ca61e99c4a2f1073061d2039d1cf565"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/TapTapGidSDK.xcframework.zip",
            checksum: "01dfe884e40ede8c76153b25980b4ca901aa2f99cd8a3634df1211d9c25010bc"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/TapTapLoginSDK.xcframework.zip",
            checksum: "f1577de8980a5cb9175befa2b9faa664a6d19a4781ee5a32b6924f72d8f0f149"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/TapTapNetworkSDK.xcframework.zip",
            checksum: "59591027040a7fc075434bfb860d6ec4c8e560e9e8624fbffd9b5345c245ccf7"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "5764bc84649b0de98e035a73faecb71298e7a4969deb99d4fe5236ae2b07edc7"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/TapTapShareSDK.xcframework.zip",
            checksum: "f8f2e67dbe57ce5a8e6db9066f902bd6689de66c3003a675d5e259d6b8e7dfc6"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/TencentOpenAPI.xcframework.zip",
            checksum: "ddd7e5d0e5e35bdf93dc34d8dde303ea78fff840141d49c566347ebb2257c4b1"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/WechatConnector.xcframework.zip",
            checksum: "83307ebfbf408ef9294982e7b5a36ad9fd56a64e47f9fcde76587cfbd107b6d4"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/XHSConnector.xcframework.zip",
            checksum: "cc2762b961c3e121995f0ff62a6be7c1aaffa858a4499295e8cf880c8687e6fe"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "73c6dcf58442fc24791d01cd5fed515e7a3d00a8decd2e5b3423c8b1ebc905e3"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/YTXMonitor.xcframework.zip",
            checksum: "c0465e3cbe23170e83640558bda8aaa2415d1791246a3402fe1c36f62c9df5d6"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/YTXOperators.xcframework.zip",
            checksum: "776e6a43c8f69963dc8f8f8a8e0c8e8147069a07d9e8478bf70551302cfeea49"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1404918/tapsdkcorecpp.xcframework.zip",
            checksum: "748f536e40eb15be3bcb5f8a363924f444b49283ba738ca312e8ec3d2ec54116"
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
