# OneSDK for iOS

OneSDK 是一个集成了 30+ 第三方 SDK 的统一解决方案，支持账号登录、社交分享、数据分析等功能。

## 📦 快速集成

### 在 Xcode 中添加

```
File → Add Package Dependencies
输入: https://github.com/onesdkspm/OneSDK-iOS
版本: 1.0.3 或更高
```

---

## 🎯 选择产品

### 方式 1：使用基础版本（推荐新手）

**产品名称**: `OneSDKCore`

**包含内容**:
- ✅ 所有 SDK 功能（账号、分享、登录等）
- ✅ 基础 UI 资源
- ❌ 不包含皮肤主题

**适用场景**: 
- 自定义 UI
- 只需要 SDK 功能，不需要预制主题

---

### 方式 2：使用皮肤版本（快速上手）

每个皮肤版本 = `OneSDKCore` + 对应主题资源

| 产品名称 | 包含主题 | 适用游戏 |
|---------|---------|---------|
| `OneSDKTianti` | 天梯主题 | 天梯游戏平台 |
| `OneSDKHappymaker` | Happymaker 主题 | Happymaker 游戏 |
| `OneSDKQutang` | 趣堂主题 | 趣堂游戏平台 |
| `OneSDKPjm` | Pjm 主题 | Pjm 游戏 |
| `OneSDKHiddentianti` | Hiddentianti 主题 | Hiddentianti 游戏 |

**适用场景**:
- 使用公司预制的 UI 主题
- 快速集成，无需自定义 UI

---

## ⚠️ 重要提示

**只选择一个产品！**

```swift
// ✅ 正确：只选一个
.product(name: "OneSDKTianti", package: "OneSDK-iOS")

// ❌ 错误：不要同时添加多个
.product(name: "OneSDKCore", package: "OneSDK-iOS")
.product(name: "OneSDKTianti", package: "OneSDK-iOS")  // 重复！
```

---

## 💡 如何选择？

### 简单决策树

```
你是否需要使用公司预制的 UI 主题？
  │
  ├─ 是 → 选择对应的皮肤产品（如 OneSDKTianti）
  │
  └─ 否 → 选择 OneSDKCore
```

---

## 📱 使用示例

### 在 Xcode 项目中

1. **File** → **Add Package Dependencies**
2. **输入 URL**: `https://github.com/onesdkspm/OneSDK-iOS`
3. **选择版本**: `1.0.3` 或 `Up to Next Major`
4. **选择产品**: 
   - 新手推荐: `OneSDKCore`
   - 天梯游戏: `OneSDKTianti`
5. **点击** `Add Package`

### 在 Package.swift 中

```swift
dependencies: [
    .package(url: "https://github.com/onesdkspm/OneSDK-iOS.git", from: "1.0.3")
],
targets: [
    .target(
        name: "YourApp",
        dependencies: [
            // 选择一个产品
            .product(name: "OneSDKCore", package: "OneSDK-iOS")
        ]
    )
]
```

---

## ⚙️ 系统要求

- **iOS**: 13.0+
- **Xcode**: 14.0+
- **Swift**: 5.7+

---

## 🔗 架构说明

OneSDK 使用混合托管架构：

```
GitHub (Package.swift + 资源)
    ↓
XCFrameworks (托管在 Nexus)
    ↓
您的项目
```

**首次集成**: 需要下载约 100+ MB 的 XCFrameworks（一次性）

---

## 📞 技术支持

- **问题反馈**: [GitHub Issues](https://github.com/onesdkspm/OneSDK-iOS/issues)
- **版本历史**: [Releases](https://github.com/onesdkspm/OneSDK-iOS/tags)

---

## 📝 更新日志

### 1.0.3 (2026-02-03)
- ✅ 修复所有 SPM 配置问题
- ✅ 优化资源 targets 配置
- ✅ 添加完整的产品说明

### 1.0.0 (2026-02-02)
- 🎉 首次发布
