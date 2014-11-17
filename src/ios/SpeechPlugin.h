#import <Cordova/CDVPlugin.h>
#import <AVFoundation/AVFoundation.h>

@interface SpeechPlugin : CDVPlugin <AVSpeechSynthesizerDelegate>

- (void)speak:(CDVInvokedUrlCommand*)command;
    
@end