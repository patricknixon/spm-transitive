//
//  FrameworkC.swift
//  XCodeFrameworkC
//

/// ✅ `SPMModule` can be imported because it is visible transitively via
/// `XCodeFrameworkB -> XCodeFrameworkA`.
import SPMModule

/// ✅ `XCodeFrameworkA` can be imported normally, which is no surprise.
import XCodeFrameworkA

// MARK: - IMPORTANT ⚠️ ⚠️ ⚠️

/// 🚫 `XCodeFrameworkB` cannot be imported from Swift code because its
/// Objective-C compatibility header imports `SPMModule` (even though it can be
/// imported from Objective-C, as in `FrameworkC.h`).  However, importing
/// `XCodeFrameworkB` would work if that framework did not define a public
/// `@objc` type that depends on `SPMModule` (see `XCodeFrameworkB.swift`)
//import XCodeFrameworkB
