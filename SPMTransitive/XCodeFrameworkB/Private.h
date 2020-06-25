//
//  Private.h
//  XCodeFrameworkB
//

/// ℹ️ This is a private header, so it is visible downstream but is not included
/// in the module's umbrella header.

/// ✅ @c XCodeFrameworkA can be imported normally, which is no surprise.
@import XCodeFrameworkA;

/// ✅ @c SPMModule is visible transitively via @c XCodeFrameworkA, as long
/// as we are not in a public header.
@import SPMModule;

// ✅ Can use symbols from transitive dependency, too.
@interface FrameworkBPrivateClass : NSObject <SPMProtocol>
@end
