//
//  XCodeFrameworkB.swift
//  XCodeFrameworkB
//

import Foundation

/// ✅ `XCodeFrameworkA` can be imported normally, which is no surprise.
import XCodeFrameworkA

/// ✅ `SPMModule` is visible transitively via `XCodeFrameworkA`.
import SPMModule

/// ✅ Symbols from the transitive dependency are usable, too.
@objc class PrivateType: NSObject, SPMProtocol {}

// MARK: - IMPORTANT ⚠️ ⚠️ ⚠️

/// ⚠️ Declaring a `public` interface that depends on `SPMModule` will cause
/// the Objective-C compatibility header (`XCodeFrameworkB-Swift.h`) to import
/// `SPMModule`.  This framework will build fine on its own, but but now it
/// cannot be imported by Swift downstream!  See `FrameworkC.swift`.
@objc public class PublicType: NSObject, SPMProtocol {}
