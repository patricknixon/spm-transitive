//
//  XCodeFrameworkB.h
//  XCodeFrameworkB
//

/// ℹ️ This is the public umbrella header.

/// 🚫 Cannot import @c SPMModule from the umbrella header.
//@import SPMModule;

/// 🚫 Cannot import @c Private.h (if it were public) since it imports @c SPMModule.
//#import <XCodeFrameworkB/Private.h>

/// 🆗 Can include headers that only forward-declare @c SPMModule symbols.
#import <XCodeFrameworkB/Public.h>
