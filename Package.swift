// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Core",
  platforms: [.iOS(.v14), .macOS(.v10_15)],
  products: [
    // Products define the executables and libraries a package produces, and make them visible to other packages.
    .library(
      name: "Core",
      targets: ["Core"]),
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    .package(name: "Realm", url: "https://github.com/realm/realm-cocoa.git", from: "10.6.0"),
    .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.4.1")),
    .package(name: "SDWebImageSwiftUI", url: "https://github.com/SDWebImage/SDWebImageSwiftUI.git", from: "1.5.0"),
   // .package(name: "Nimble", url: "https://github.com/Quick/Nimble.git", from: "9.1.0"),
    .package(name: "Introspect", url: "https://github.com/siteline/SwiftUI-Introspect.git", from: "0.1.3")
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages this package depends on.
    .target(
      name: "Core",
      dependencies: [
        .product(name: "RealmSwift", package: "Realm"),
        "Alamofire",
        "SDWebImageSwiftUI",
       // "Nimble",
        "Introspect"
      ]),
    .testTarget(
      name: "CoreTests",
      dependencies: ["Core"]),
  ]
)
