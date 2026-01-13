// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MapplsLocationCapture",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MapplsLocationCapture",
            targets: ["MapplsLocationCaptureWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/mappls-api/mappls-api-core-ios-distribution.git", from: "2.0.8")
    ],
    targets: [
        .binaryTarget(
            name: "MapplsLocationCapture",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-location-capture/MapplsLocationCapture.xcframework-1.0.0.zip",
            checksum: "809975228470c14675911c4823538f722e10d3f8d9da85f2fbc60529fc61180f"
        ),
        .target(
            name: "MapplsLocationCaptureWrapper",
            dependencies: [
                "MapplsLocationCapture",
                .product(name: "MapplsAPICore", package: "mappls-api-core-ios-distribution")
            ]
        ),
    ]
)
