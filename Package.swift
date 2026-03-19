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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/ATAuthSDK.xcframework.zip",
            checksum: "d6b5f59ca98c856cc8872a7bf69ca53c05ba9c60bd07a9fec140b81ba48ef56c"
        ),
        .binaryTarget(
            name: "Bugly",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/Bugly.xcframework.zip",
            checksum: "589f1b7cc592027a2ccbf070b6633281514f9ad2b63c6e8d3f1e63baac258c52"
        ),
        .binaryTarget(
            name: "DouyinConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/DouyinConnector.xcframework.zip",
            checksum: "386ab94b4344b029f83d1f32303062e71d7c5be5ef3ebbdb67bf861e37ec5d3d"
        ),
        .binaryTarget(
            name: "DouyinOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/DouyinOpenSDK.xcframework.zip",
            checksum: "4e41b24701a4cf87f5b0c36df7ee6a32812db2e259c6a6bde9e6d0f5b50ef859"
        ),
        .binaryTarget(
            name: "FMDB",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/FMDB.xcframework.zip",
            checksum: "f0f3d8b80ee630de60cf2a7144cd4886f81128e779618ab1ae0fd5597ee12fd8"
        ),
        .binaryTarget(
            name: "FlyVerifyCSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/FlyVerifyCSDK.xcframework.zip",
            checksum: "8a9017b8ba1f006b2e6ae801510683f3767a5a2725917c1bdfe0069c95aa8f1c"
        ),
        .binaryTarget(
            name: "GravityEngineSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/GravityEngineSDK.xcframework.zip",
            checksum: "362f2819449f97c39f2081b26cc502711c0005386b20c42a099c7dbe79d29a4b"
        ),
        .binaryTarget(
            name: "KuaiShouConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/KuaiShouConnector.xcframework.zip",
            checksum: "ab7fa20780de987f2c4f8b6d14e7f352244f9c2d977490dce54d22ebae4e34d4"
        ),
        .binaryTarget(
            name: "MOBFoundation",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/MOBFoundation.xcframework.zip",
            checksum: "c0cf3daba02bf72d158aa708d5de6bdf09ea84a0ad8fcad752f3bba5ceb5159d"
        ),
        .binaryTarget(
            name: "OneSDKAccount",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/OneSDKAccount.xcframework.zip",
            checksum: "48997bc182d47fedfe7d9e7effde3b9401731dd471be90326dbc8c4efd49d323"
        ),
        .binaryTarget(
            name: "OneSDKCommon",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/OneSDKCommon.xcframework.zip",
            checksum: "0a12652676fa6e5769bcb1f12653a29bfa20a5e5681f68303655c9d23161bf46"
        ),
        .binaryTarget(
            name: "OneSDKGravityEngine",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/OneSDKGravityEngine.xcframework.zip",
            checksum: "b55efe4e21dfd4547ffb908630a79a20f73fe13c2d4283a887c15d586c594a53"
        ),
        .binaryTarget(
            name: "OneSDKIAPHelperFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/OneSDKIAPHelperFramework.xcframework.zip",
            checksum: "cdd1c33dd799cb9bd5228eda987b60a609949aea075ece7d0a2339a92d6dda1e"
        ),
        .binaryTarget(
            name: "OnesdkBaitianFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/OnesdkBaitianFramework.xcframework.zip",
            checksum: "4600e70aa1dcf4efb6c13de8df8ace865dad4ab431d0ee5bfa17d343b943a7a0"
        ),
        .binaryTarget(
            name: "OtherPartySDKFramework",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/OtherPartySDKFramework.xcframework.zip",
            checksum: "ed1e64a0c705c2853935540e0522fe8e5c0e3a5bd4b44261df6f19f21bfdc23f"
        ),
        .binaryTarget(
            name: "QQConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/QQConnector.xcframework.zip",
            checksum: "867ac8dc4f874e37fb3638531277c5fb4094c919222c1c33128d10e209523888"
        ),
        .binaryTarget(
            name: "ShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/ShareSDK.xcframework.zip",
            checksum: "8fe48fd8bc819e10b28d495f647473ee7000908c5ce8d6178dfb85f63d119c04"
        ),
        .binaryTarget(
            name: "ShareSDKConfigFile",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/ShareSDKConfigFile.xcframework.zip",
            checksum: "f470d6a91b591fe00868e00010ce59b73546b0d6ae2c60f30366ed2d11b7ead0"
        ),
        .binaryTarget(
            name: "ShareSDKConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/ShareSDKConnector.xcframework.zip",
            checksum: "f5844ca608fbf41c65827a324eb958319c1bde03f6dcd70e25de0c4c9eef20c0"
        ),
        .binaryTarget(
            name: "ShareSDKExtension",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/ShareSDKExtension.xcframework.zip",
            checksum: "59a247321e5c789d426eaab070800098c822ff5c6e8abb9fa8226ac127059c42"
        ),
        .binaryTarget(
            name: "ShareSDKUI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/ShareSDKUI.xcframework.zip",
            checksum: "49288fa4047e9810e4ffda2c487d87e7a3eb6ce74ba2af3a7665b927a9f0e498"
        ),
        .binaryTarget(
            name: "SinaWeiboConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/SinaWeiboConnector.xcframework.zip",
            checksum: "d3068823d642a0df52693dc18fac066493154359f1321358b0ef4cd14bccb6f6"
        ),
        .binaryTarget(
            name: "THEMISLite",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/THEMISLite.xcframework.zip",
            checksum: "5d48e3c8d9552297efcabba4ec702048aa54cc098cca9acfb04cb65d0ff4a441"
        ),
        .binaryTarget(
            name: "TapTapBasicToolsSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/TapTapBasicToolsSDK.xcframework.zip",
            checksum: "70fab319991ab7f47dabf2cd79ac50bf50186d0a8d2e0c266b88211a06944af6"
        ),
        .binaryTarget(
            name: "TapTapCoreSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/TapTapCoreSDK.xcframework.zip",
            checksum: "f5b4ae6c4a53d99aaee39e21d35b42104f53dd657994e8b21232304d4a0fadb3"
        ),
        .binaryTarget(
            name: "TapTapGidSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/TapTapGidSDK.xcframework.zip",
            checksum: "721272617d9ac984152a1387ba738205494166660898900712449409e7148010"
        ),
        .binaryTarget(
            name: "TapTapLoginSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/TapTapLoginSDK.xcframework.zip",
            checksum: "4376141a75ebc92f3a846753c716518b63f59d9454501e5b6f79ccd6bc1648c5"
        ),
        .binaryTarget(
            name: "TapTapNetworkSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/TapTapNetworkSDK.xcframework.zip",
            checksum: "d45d2f5d452903c9ab776f8fb4f3dacd254c86c2a75e4df4bdfe755b91230fea"
        ),
        .binaryTarget(
            name: "TapTapSDKBridgeCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/TapTapSDKBridgeCore.xcframework.zip",
            checksum: "124dba6e40cba0aecdf1f0f4edec558f73f76b5e68b6f5bfe4ceb4505e341289"
        ),
        .binaryTarget(
            name: "TapTapShareSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/TapTapShareSDK.xcframework.zip",
            checksum: "ab231d7824afadd2a8661c2eed64996fd1e8187d254dc605433fed8c5663032c"
        ),
        .binaryTarget(
            name: "TencentOpenAPI",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/TencentOpenAPI.xcframework.zip",
            checksum: "7bcd5492bfc1797aa18706d75beda57c681cf668356a1a6fe906b31ad4a2cc47"
        ),
        .binaryTarget(
            name: "WechatConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/WechatConnector.xcframework.zip",
            checksum: "c21cb067cf389d07dfd60c7193781ef5ba0138bc117a83d7776f1492a4e1fb5c"
        ),
        .binaryTarget(
            name: "XHSConnector",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/XHSConnector.xcframework.zip",
            checksum: "a183385b214b32c7360bfcf00a16d62bb1100e57c065d323059489bf8ff07b04"
        ),
        .binaryTarget(
            name: "XiaoHongShuOpenSDK",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/XiaoHongShuOpenSDK.xcframework.zip",
            checksum: "e420621b037dd79458d54f34dc27ecf3aec9967e6bea6bc30efeee5adcb71a1f"
        ),
        .binaryTarget(
            name: "YTXMonitor",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/YTXMonitor.xcframework.zip",
            checksum: "f961f32f27e954f923bf641f6cbb2d1552bbd8d22070071dd7d3670c102fd74f"
        ),
        .binaryTarget(
            name: "YTXOperators",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/YTXOperators.xcframework.zip",
            checksum: "9f2f4fa2db84983998b75e900e9c678098f1dd0b5ffa41126283e6004b3b544e"
        ),
        .binaryTarget(
            name: "tapsdkcorecpp",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/OneSDK/3.3.17-dev-1403398/tapsdkcorecpp.xcframework.zip",
            checksum: "4a05bde777681f4832c4be7a4425bc4009cf618855e91335812121b2e4e6aab0"
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
