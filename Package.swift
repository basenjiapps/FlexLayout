// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "FlexLayout",
  products: [
    .library(name: "FlexLayout", targets: ["FlexLayout"]),
    .library(name: "FlexLayoutYoga", targets: ["FlexLayoutYoga"]),
    .library(name: "FlexLayoutYogaKit", targets: ["FlexLayoutYogaKit"])
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "FlexLayout",
      dependencies: ["FlexLayoutYoga", "FlexLayoutYogaKit"],
      path: "Sources/Swift",
      cSettings: [
        .define("SWIFT_PACKAGE"),
        .headerSearchPath("include/yoga/"),
        .headerSearchPath("./"),
        .headerSearchPath("./*")
      ],
      cxxSettings: [
        .define("SWIFT_PACKAGE"),
        .headerSearchPath("include/yoga/"),
        .headerSearchPath("./"),
        .headerSearchPath("./*")
      ],
      swiftSettings: [
        .define("SWIFT_PACKAGE")
      ]
    ),
    .target(
      name: "FlexLayoutYoga",
      dependencies: [],
      path: "Sources/yoga",
      cSettings: [
        .define("SWIFT_PACKAGE"),
        .headerSearchPath("include/yoga/"),
        .headerSearchPath("./"),
        .headerSearchPath("./*")
      ],
      cxxSettings: [
        .define("SWIFT_PACKAGE"),
        .headerSearchPath("include/yoga/"),
        .headerSearchPath("./"),
        .headerSearchPath("./*")
      ]
    ),
    .target(
      name: "FlexLayoutYogaKit",
      dependencies: ["FlexLayoutYoga"],
      path: "Sources/YogaKit",
      cSettings: [
        .define("SWIFT_PACKAGE"),
        .headerSearchPath("include/yoga/"),
        .headerSearchPath("./"),
        .headerSearchPath("./*")
      ],
      cxxSettings: [
        .define("SWIFT_PACKAGE"),
        .headerSearchPath("include/yoga/"),
        .headerSearchPath("include/YogaKit/"),
        .headerSearchPath("./"),
        .headerSearchPath("./*")
      ]
    )
  ],
  cLanguageStandard: .gnu99,
  cxxLanguageStandard: .gnucxx11
)
