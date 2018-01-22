import PackageDescription

#if os(OSX)
let package = Package(
    name: "Pjango-Postman",
    targets: [],
    dependencies: [
        .Package(url: "https://github.com/PerfectlySoft/Perfect-CURL.git", majorVersion: 3, minor: 0),
        .Package(url: "https://github.com/enums/Pjango.git", majorVersion: 1, minor: 1),
        .Package(url: "https://github.com/enums/SwiftyJSON.git", majorVersion: 4),
        ]
)
#else
let package = Package(
    name: "Pjango-Postman",
    targets: [],
    dependencies: [
        .Package(url: "https://github.com/PerfectlySoft/Perfect-CURL.git", majorVersion: 2, minor: 0),
        .Package(url: "https://github.com/PerfectlySoft/Perfect-Crypto.git", majorVersion: 1, minor: 0),
        .Package(url: "https://github.com/enums/Pjango.git", majorVersion: 1, minor: 1),
        .Package(url: "https://github.com/enums/SwiftyJSON.git", majorVersion: 4),
        ]
)
#endif
