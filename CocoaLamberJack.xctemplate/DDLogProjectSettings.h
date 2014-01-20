#import "DDLog.h"
#import "DDASLLogger.h"
#import "DDTTYLogger.h"

// ========================= Overrides ========================================
// --> per https://github.com/robbiehanson/CocoaLumberjack/wiki/CustomLogLevels
// ----------------------------------------------------------------------------

// Are we in an optimized (i.e. Release) build?
#ifdef __OPTIMIZE__
// YES: Nothing to do from the default. (You could simplify this by using #ifndef above instead)
#else
// NO: We're in a Debug build. As such, let's configure logging to flush right away.
// Undefine the asynchronous defaults:
#undef LOG_ASYNC_VERBOSE
#undef LOG_ASYNC_INFO
#undef LOG_ASYNC_WARN

// Define the logs levels to be synchronous:
#define LOG_ASYNC_VERBOSE   (NO && LOG_ASYNC_ENABLED)   // Debug logging will be synchronous
#define LOG_ASYNC_INFO      (NO && LOG_ASYNC_ENABLED)   // Info logging will be synchronous
#define LOG_ASYNC_WARN      (NO && LOG_ASYNC_ENABLED)   // Warn logging will be synchronous
#endif
