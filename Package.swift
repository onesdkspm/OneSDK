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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/ATAuthSDK.xcframework.zip",
            checksum: "c8e8c457627c3267940acf22294428691f21c3b62429b2971bba2f2524c7ddbe"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/DouyinConnector.xcframework.zip",
            checksum: "7f3708954e09313171aa66bd22bc3fc62d38c3075543649ef1ca032eeaf3a31f"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/DouyinOpenSDK.xcframework.zip",
            checksum: "eef5261f32b894b03bc4775ffc0de1d720be72dfcbca1386cddff4ed5198395c"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/FlyVerifyCSDK.xcframework.zip",
            checksum: "8f171c10f3e715f185f9a6a64262b39a0e413809bd999115ef6bfd3443444a76"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/FMDB.xcframework.zip",
            checksum: "cea6683b223af2953fb0b8b43369ff25b9a3a8dd8ba6a0135e07deb614fb712c"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/KuaiShouConnector.xcframework.zip",
            checksum: "537c6482aa086bdbac15cf3a7767d3a00de46d666b37274194136d5a9dd31c7c"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/MOBFoundation.xcframework.zip",
            checksum: "c67ad0e41f4fe572f12311f5d7d709c1d57d11f900fd266e1984a2a854b9d478"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/OneSDKAccount.xcframework.zip",
            checksum: "409636adc079161048d25b7e92e196440e9e10b1ac7e48d438c0c85b1fde1e29"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/OnesdkBaitianFramework.xcframework.zip",
            checksum: "a120e5e97e822126f6ab16e9cf2be189c75b56ed33b898fede38c5b31e4515f0"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/OneSDKCommon.xcframework.zip",
            checksum: "1c7b85e87ea421ac2d6e2f26862c97a0adee407b1ea25b2987c980a902ca4a39"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/OneSDKGravityEngine.xcframework.zip",
            checksum: "88a9665c1171355f50abd3fa335a59e46d4a935e2b39d4867c0f7a9a7e4e0f31"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "7e758a44a562313d0cc2e9ff75d71fd19d3ffad92f07b87ed9eef7dc32cfa541"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/OtherPartySDKFramework.xcframework.zip",
            checksum: "135ba030ee1d2d66d86edbc207d3eca12969e3521dec6dbcb84fd398170700fc"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/QQConnector.xcframework.zip",
            checksum: "65a6b9964ff6ec14a0b30ec5f779f3389bf85e82911bc7368039c997d901c0d3"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/ShareSDK.xcframework.zip",
            checksum: "529e70290e67decf2491e862cef8b2ac041d6a1acc1f6b3ff5d2a67d2bea3ed3"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/ShareSDKConfigFile.xcframework.zip",
            checksum: "736c6a6bc9b16449af867bcac8f956b70f6b6d839c69f79f26f3c8ba9fba11f0"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/ShareSDKConnector.xcframework.zip",
            checksum: "8c41bea963ab1586f504d80a6a3464fd52b07152638cbf4ecc72c455cfdfb62c"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/ShareSDKExtension.xcframework.zip",
            checksum: "96e31d5f9f83187e7aad416e96a8b56fde3a31679caaf059265cf4d30a38abb4"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/ShareSDKUI.xcframework.zip",
            checksum: "f01ee233920c71d45cd09ece7f5e977a0d9a44c4d9e0584082e536ca29c4289e"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/SinaWeiboConnector.xcframework.zip",
            checksum: "f48e3ec8808dd948a4892a82a7ded2e53c4476205334b3fc6348754cc279f02e"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/tapsdkcorecpp.xcframework.zip",
            checksum: "1bb1e468bc27643925138a0c6622a61c8034f77593655e7c44a6f31778dc5eee"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "dd404407ab6f5c394febd989a1f573daf2e7b4172ad2ebecbdc662738351f642"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/TapTapCoreSDK.xcframework.zip",
            checksum: "4360b3fa60ab18687e8e40205c038515af2511cdb317d00dd599ee212e5e96db"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/TapTapGidSDK.xcframework.zip",
            checksum: "aa20d18a46151935ba9c3130da256a246c9c56875f2f2e901e8aa979e1aad007"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/TapTapLoginSDK.xcframework.zip",
            checksum: "2d5d8fee0e2b037bb799cc6ac5d38b58c692934221d4993910d646e046b1192d"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/TapTapNetworkSDK.xcframework.zip",
            checksum: "1b506eb1ffb85aada86deee3f7a281592ea3a23733cb0286123c35f57a69b8f3"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "c9afc74a166011de5f63d98c5e11e7a4dc1bd327e7e1db94f0b2a1a837de3f71"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/TapTapShareSDK.xcframework.zip",
            checksum: "ceb6de1c14b812d36e181f65f5d8078b0ba1ab0836bdc2f34095ef30605055a4"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/TencentOpenAPI.xcframework.zip",
            checksum: "fdd2ed2666df9befc0844fc1b1e210ffceb7505966d38e999d4cb63f939283fb"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/THEMISLite.xcframework.zip",
            checksum: "770cd074f1e8688ef61fefba7f999839f26970342f46680acaae336b43ca20a4"
        ),
        .binaryTarget(
            name: "UnitySDKManager",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/UnitySDKManager.xcframework.zip",
            checksum: "fae195672cb4bd1a1d2bdbed5f4c1a46258200aa2540070456883720681c9d54"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/WechatConnector.xcframework.zip",
            checksum: "cf9a29cf591c8a623da115a91d8a86aa7f442c79c48315edf61e396c22d4a083"
        ),
        .binaryTarget(
            name: "WechatOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/WechatOpenSDK.xcframework.zip",
            checksum: "158d51ceb49031a45cd44257de57edf00d19f8eaf509f6f35b5d3affb21c2307"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/XHSConnector.xcframework.zip",
            checksum: "0e3bb46687a886acab1f333c50fbe6dfb259ef7742c76f077ffeaa3f0a203bcd"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "431c4e44dfe25a9e9d62a6028d73cc41a704a3f5a198b67557ab918aad474880"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/YTXMonitor.xcframework.zip",
            checksum: "56e2550c3810e6c5b8f5d114d324dc97fa2df1ee97f4e36e5e2190cf9343d76f"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.4.3-dev-1532148/YTXOperators.xcframework.zip",
            checksum: "c515d046b18d5d4e113b9901db4515e1d17747a944ab7c31e5895fed77f88679"
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
