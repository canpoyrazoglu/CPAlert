// Open-source. Written by Can Poyrazoglu.
// Use any way you like, including commercial use.
// Happy coding :)

typedef void (^CPAlertAction)(void);
typedef void (^CPAlertStringBlock)(NSString *result);

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CPAlert : NSObject<UIAlertViewDelegate>

+(UIAlertView*)displayWithTitle:(NSString*)title description:(NSString*)description buttonTitle:(NSString*)buttonTitle tapHandler:(CPAlertAction)handler;
+(UIAlertView*)displayWithTitle:(NSString*)title description:(NSString*)description firstButtonTitle:(NSString*)firstButtonTitle firstButtonTapHandler:(CPAlertAction)handler secondButtonTitle:(NSString*)secondButtonTitle secondButtonTapHandler:(CPAlertAction)secondHandler;
+(UIAlertView*)displayWithTitle:(NSString*)title description:(NSString*)description firstButtonTitle:(NSString*)firstButtonTitle firstButtonTapHandler:(CPAlertAction)handler secondButtonTitle:(NSString*)secondButtonTitle secondButtonTapHandler:(CPAlertAction)secondHandler thirdButtonTitle:(NSString*)thirdButtonTitle thirdButtonTapHandler:(CPAlertAction)thirdHandler;
+(UIAlertView*)displayWithTitle:(NSString*)title description:(NSString*)description firstButtonTitle:(NSString*)firstButtonTitle firstButtonTapHandler:(CPAlertAction)handler secondButtonTitle:(NSString*)secondButtonTitle secondButtonTapHandler:(CPAlertAction)secondHandler thirdButtonTitle:(NSString*)thirdButtonTitle thirdButtonTapHandler:(CPAlertAction)thirdHandler fourthButtonTitle:(NSString*)fourthButtonTitle fourthButtonTapHandler:(CPAlertAction)fourthHandler;
+(UIAlertView*)askFor:(NSString*)title withDescription:(NSString*)description completion:(CPAlertStringBlock)completion;

@end
