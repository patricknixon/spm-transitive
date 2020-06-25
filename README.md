# spm-transitive

There are XCode frameworks and one SPM library.  The dependency graph is simply:

    XCodeFrameworkC -> XCodeFrameworkB -> XCodeFrameworkA -> SPMModule

- **SPMModule** declares a single  `@objc public protocol` and that's it.

- **XCodeFrameworkA** is empty, and only exists to demonstrate that `SPMModule`
  is still visible transitively downstream.

- **XCodeFrameworkB** contains a few files that demonstrate that `SPMModule` is
  visible to both Swift and Objective-C, but not from public Objective-C
  headers.  In addition, it declares this public type from Swift:

      @objc public class PublicType: NSObject, SPMProtocol {}

  Since this `@objc` type depends on `SPMModule` and is public,  the Objective-C
  compatibility header will `@import SPMModule`.
  
- **XcodeFrameworkC** demonstrates that `XCodeFrameworkB` can now be imported
  from Objective-C but it not from Swift.  Simply uncomment the line in
  `XCodeFrameworkC.swift` to demonstrate the issue.
