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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/ATAuthSDK.xcframework.zip",
            checksum: "ebea06586e6df133ac66f964240c1806d72958e4e44b262e48a70b9edc212a1d"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/DouyinConnector.xcframework.zip",
            checksum: "e0267494e4d6c39c41479f906a4da93a19b9e991ca4d0ce1c3aba0771af20f0b"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/DouyinOpenSDK.xcframework.zip",
            checksum: "ff782a35b986e0418347cc1998bf1ad0c5185b2342c0dda3c2f9329479f50208"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/FlyVerifyCSDK.xcframework.zip",
            checksum: "aa083c5a015127da3879c48be2c0d9287e5407321cfb59da3fb1bd8425a630db"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/FMDB.xcframework.zip",
            checksum: "2e81baf5c85f53c4a4099aec9258039de945f3b410be4bfda938ff85c743e426"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/GravityEngineSDK.xcframework.zip",
            checksum: "98c2485fda7b823c0695df2c51fed4b2aff1b738bb5d5fb7c4df747b88d63546"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/KuaiShouConnector.xcframework.zip",
            checksum: "fe48b10f532401d19e445756af8b0c546446d86c726abf0d51f628a0037974ec"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/MOBFoundation.xcframework.zip",
            checksum: "e666eec6e9b9411892809725c8e7cd9dffddf513bc150378a9efca2c2a64dad2"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/OneSDKAccount.xcframework.zip",
            checksum: "0f63bcd6d8741e2a7091c8b8ac7e69a71056630d81eaf4fbd1ff641dcc4b86f4"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/OnesdkBaitianFramework.xcframework.zip",
            checksum: "d98174b56dd21189ee4ae1f4f54cc3718561e2c18889be0e84d10430ba97a80c"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/OneSDKCommon.xcframework.zip",
            checksum: "929109b8ab86b44168406a3f250cf0e529873c4e985b182413e875ab0dd8ac40"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/OneSDKGravityEngine.xcframework.zip",
            checksum: "b6004147c1f0332a70636f757c3ce58a9ebd4ca0640ab7062158ec2161828010"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "adce47a37b8183e247f8e7bd932d7f2c09437dd22b3b5d488771280a3fa62e37"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/OtherPartySDKFramework.xcframework.zip",
            checksum: "4c390964d279aec2fa1f831f7577ba33af17bef321f06608da09657fd71dc26d"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/QQConnector.xcframework.zip",
            checksum: "13cc283aa27f15c0213cf84f6572f16b15a5ac03b6df405185ef71673f14252e"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/ShareSDK.xcframework.zip",
            checksum: "665f8c1df41184f9a3c3e4605a6e6f924ba727d48411eb1a8efeb81d044f6489"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/ShareSDKConfigFile.xcframework.zip",
            checksum: "c97f303c582a937bf1cce0a16109c67f493ec0361facd2b4fb90399d9d2a5924"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/ShareSDKConnector.xcframework.zip",
            checksum: "b696c2d654edd29441dc9ce28ee3edfc6bc891e058906372052c6ac5852a8887"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/ShareSDKExtension.xcframework.zip",
            checksum: "5fcc8a1c077a5620d240830f196c6a8dc908f28515667a98882e53b8194b5abc"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/ShareSDKUI.xcframework.zip",
            checksum: "eb5dee343d2134d54a051ad9537b7ad4d9996fb8f60bed19f7f54499f39bfd31"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/SinaWeiboConnector.xcframework.zip",
            checksum: "1f5f37ed299f919c6741dbd7afa54c061302b427c2cae01dd4f4eccffd015d20"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/tapsdkcorecpp.xcframework.zip",
            checksum: "2f3e948c08726b76ceedf120ac7e1e8d6452438f9c3a6f85e63766060409d06b"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "3ca0bdfd4c46984fe5d1a2b7515bd7c8ddb1cc84d7640a7f428a7c527b12c52d"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/TapTapCoreSDK.xcframework.zip",
            checksum: "7434329c4b7e18fc790eeddba3a765ec4a54608520b0549087a5bdee1392e635"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/TapTapGidSDK.xcframework.zip",
            checksum: "d05890d9256f557714a8a34ffca8169efa9aa6cfa91e861290a1d77da5c2668f"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/TapTapLoginSDK.xcframework.zip",
            checksum: "c9b26ed1b4c040cc62641ac241dc8d23e48dbe41afa2c3b00e4df24260e6a4fb"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/TapTapNetworkSDK.xcframework.zip",
            checksum: "a460abf5846e92d770e3c3dedb1acd41c428b037430890fb6f0a28c8b55424fb"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "f7d4b4fd84e9077db5811913232f706e5d3349feaca24bfca31f89c0bb07f4aa"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/TapTapShareSDK.xcframework.zip",
            checksum: "9a9461974ba28e399c5c8b10849b86cf6bd2d4217994c8fee430fab29022b7b9"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/TencentOpenAPI.xcframework.zip",
            checksum: "16a752e2afbc4aec4e1129177ad068755b8267912f6d773199ebdc7455e72f27"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/THEMISLite.xcframework.zip",
            checksum: "c5d115c8a6584b1b7a9f104862dd76ac4d097aae11811efc1dad21d0e9cc70e5"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/UnitySDKManager.xcframework.zip",
            checksum: "38049b70ff7a5b8b8bcf277a15ef1b0e4e5df733898693cab6f824120ae377f2"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/WechatConnector.xcframework.zip",
            checksum: "e07d03ca2bf6d2a29dc4676a2084a29c3783c38820160222bc4de934c6f1e179"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/XHSConnector.xcframework.zip",
            checksum: "13e67dbfc86a4502a5d7559aeb3e6ad9cdb3fe410d24c348b64dd66ab3e42a55"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "4ccdda1f9bcca06a116e6d1fc93cefcfdb8fd1c0ead35159598a7740df7c8a6e"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/YTXMonitor.xcframework.zip",
            checksum: "bc67141f2214f5cea436ce90626d96e60e4e99ac8e249c6393f7be42d3526e51"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1537332/YTXOperators.xcframework.zip",
            checksum: "1a551acb9cb2f4840b21dfa7e3066450e3689337e3aa7bfb80fc727e95175a97"
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
