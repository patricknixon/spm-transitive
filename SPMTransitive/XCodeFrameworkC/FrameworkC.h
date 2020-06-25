//
//  FrameworkC.h
//  XCodeFrameworkC
//

/// ⁉️ @c XCodeFrameworkB can be imported normally, which is interesting because
/// it cannot be imported from Swift code (see FrameworkC.swift).
@import XCodeFrameworkB;

/// ✅ @c FrameworkBPrivateClass can be imported via a private header.
/// This also imports @c SPMModule here.
#import <XCodeFrameworkB/Private.h>

// ✅ Can use symbols from transitive dependency, too.
@interface FrameworkCClass : NSObject <SPMProtocol>
@end
