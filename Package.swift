// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MapplsUIWidgets",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MapplsLocationCapture",
            targets: ["MapplsLocationCaptureWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/mappls-api/mappls-api-core-ios-distribution.git", from: "2.0.6")
    ],
    targets: [
        .binaryTarget(
            name: "MapplsLocationCapture",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-uiwidget/MapplsUIWidgets.xcframework-2.0.0.zip",
            checksum: "cc1b8b02769a04c53afee1b384992c761ec0bcae011df9e94f44264971fb786f"
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
