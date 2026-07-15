// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "XSecurityEncrypt",
    platforms: [
        .iOS(.v18) // 根据你的库支持的最低版本填写
    ],
    products: [
        // 暴露给外界导入的 Target 名字
        .library(
            name: "XSecurityEncrypt",
            targets: ["XSecurityEncrypt"]
        ),
    ],
    dependencies: [],
    targets: [
        // 1. 我们声明一个 Binary Target 指向本地的 xcframework
        .binaryTarget(
            name: "XSecurity",
            path: "./Frameworks/XSecurity.xcframework"
        ),
        // 2. 我们通过一个普通的 Target 把 Binary Target 暴露给外部
        .target(
            name: "XSecurityEncrypt",
            dependencies: [
                .target(name: "XSecurity")
            ]
        )
    ]
)
