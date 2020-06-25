//
//  Private.h
//  XCodeFrameworkB
//

@import Foundation;

/// ℹ️ This is a public header that is included in the module's umbrella header.

/// ✅ @c XCodeFrameworkA can be imported normally, which is no surprise.
@import XCodeFrameworkA;

/// 🚫 Cannot import @c SPMModule in a public header.
//@import SPMModule;

/// 🆗 Can forward declare @c SPMModule symbols.
@protocol SPMProtocol;

@interface FrameworkBPublicClass : NSObject
@property (nonatomic) id<SPMProtocol> foo;
@end
