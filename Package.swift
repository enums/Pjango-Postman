// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PjangoPostman",
    products: [
        .library(
            name: "PjangoPostman",
            targets: ["PjangoPostman"]),
        ],
    dependencies: [
        .package(url:"https://github.com/enums/Pjango.git" , from: "2.0.0"),
        .package(url:"https://github.com/PerfectlySoft/Perfect-CURL.git" , from: "3.1.0"),
        .package(url:"https://github.com/enums/Pjango-SwiftyJSON.git" , from: "1.0.0"),
        ],
    targets: [
        .target(
            name: "PjangoPostman",
            dependencies: ["Pjango", "PerfectCURL", "SwiftyJSON"])
    ]
)
