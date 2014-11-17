#import "SpeechPlugin.h"
#import <Cordova/CDVPluginResult.h>

@implementation SpeechPlugin

- (void)speak:(CDVInvokedUrlCommand*)command
{
  
  CDVPluginResult* pluginResult = nil;
  NSString* text = [command.arguments objectAtIndex:0];
    
  AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc] init];
  synthesizer.delegate = self;

  AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:text];
  utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-US"];

  [synthesizer speakUtterance:utterance];

  pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];

  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end