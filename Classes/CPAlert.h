// Open-source. Written by Can Poyrazoglu.
// Use any way you like, including commercial use.
// Happy coding :)

#ifndef ACTION_TYPEDEF
#define ACTION_TYPEDEF
typedef void (^Action)();
typedef void (^StringBlock)(NSString *result);
#endif

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CPAlert : NSObject<UIAlertViewDelegate>

+(UIAlertView*)displayWithTitle:(NSString*)title description:(NSString*)description buttonTitle:(NSString*)buttonTitle tapHandler:(Action)handler;
+(UIAlertView*)displayWithTitle:(NSString*)title description:(NSString*)description firstButtonTitle:(NSString*)firstButtonTitle firstButtonTapHandler:(Action)handler secondButtonTitle:(NSString*)secondButtonTitle secondButtonTapHandler:(Action)secondHandler;
+(UIAlertView*)displayWithTitle:(NSString*)title description:(NSString*)description firstButtonTitle:(NSString*)firstButtonTitle firstButtonTapHandler:(Action)handler secondButtonTitle:(NSString*)secondButtonTitle secondButtonTapHandler:(Action)secondHandler thirdButtonTitle:(NSString*)thirdButtonTitle thirdButtonTapHandler:(Action)thirdHandler;
+(UIAlertView*)displayWithTitle:(NSString*)title description:(NSString*)description firstButtonTitle:(NSString*)firstButtonTitle firstButtonTapHandler:(Action)handler secondButtonTitle:(NSString*)secondButtonTitle secondButtonTapHandler:(Action)secondHandler thirdButtonTitle:(NSString*)thirdButtonTitle thirdButtonTapHandler:(Action)thirdHandler fourthButtonTitle:(NSString*)fourthButtonTitle fourthButtonTapHandler:(Action)fourthHandler;
+(UIAlertView*)askFor:(NSString*)title withDescription:(NSString*)description completion:(StringBlock)completion;

@end
