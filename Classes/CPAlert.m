// Open-source. Written by Can Poyrazoglu.
// Use any way you like, including commercial use.
// Happy coding :)

#import "CPAlert.h"

@implementation CPAlert{
    Action first, second, third, fourth;
    UIAlertView *alertView;
    StringBlock inputBlock;
}

static CPAlert *currentAlert; //needed else alert view gets dealloced due to ARC

+(UIAlertView*)displayWithTitle:(NSString*)title description:(NSString*)description buttonTitle:(NSString*)buttonTitle tapHandler:(Action)handler{
    if(currentAlert){
        [currentAlert->alertView dismissWithClickedButtonIndex:-1 animated:YES];
        currentAlert = nil;
    }
    CPAlert *alert = [[CPAlert alloc] init];
    alert->first = handler;
    alert->alertView  = [[UIAlertView alloc] initWithTitle:title message:description delegate:alert cancelButtonTitle:buttonTitle otherButtonTitles:nil];
    currentAlert = alert;
    [alert->alertView show];
    return alert->alertView;
}

+(UIAlertView*)displayWithTitle:(NSString*)title description:(NSString*)description firstButtonTitle:(NSString*)firstButtonTitle firstButtonTapHandler:(Action)handler secondButtonTitle:(NSString*)secondButtonTitle secondButtonTapHandler:(Action)secondHandler{
    if(currentAlert){
        [currentAlert->alertView dismissWithClickedButtonIndex:-1 animated:YES];
        currentAlert = nil;
    }
    CPAlert *alert = [[CPAlert alloc] init];
    alert->first = handler;
    alert->second = secondHandler;
    alert->alertView = [[UIAlertView alloc] initWithTitle:title message:description delegate:alert cancelButtonTitle:firstButtonTitle otherButtonTitles:secondButtonTitle, nil];
    
    currentAlert = alert;
    [alert->alertView show];
    return alert->alertView;
}

+(UIAlertView*)displayWithTitle:(NSString*)title description:(NSString*)description firstButtonTitle:(NSString*)firstButtonTitle firstButtonTapHandler:(Action)handler secondButtonTitle:(NSString*)secondButtonTitle secondButtonTapHandler:(Action)secondHandler thirdButtonTitle:(NSString*)thirdButtonTitle thirdButtonTapHandler:(Action)thirdHandler{
    if(currentAlert){
        [currentAlert->alertView dismissWithClickedButtonIndex:-1 animated:YES];
        currentAlert = nil;
    }
    CPAlert *alert = [[CPAlert alloc] init];
    alert->first = handler;
    alert->second = secondHandler;
    alert->third = thirdHandler;
    alert->alertView = [[UIAlertView alloc] initWithTitle:title message:description delegate:alert cancelButtonTitle:firstButtonTitle otherButtonTitles:secondButtonTitle, thirdButtonTitle, nil];
    
    currentAlert = alert;
    [alert->alertView show];
    return alert->alertView;
}

+(UIAlertView*)displayWithTitle:(NSString*)title description:(NSString*)description firstButtonTitle:(NSString*)firstButtonTitle firstButtonTapHandler:(Action)handler secondButtonTitle:(NSString*)secondButtonTitle secondButtonTapHandler:(Action)secondHandler thirdButtonTitle:(NSString*)thirdButtonTitle thirdButtonTapHandler:(Action)thirdHandler fourthButtonTitle:(NSString*)fourthButtonTitle fourthButtonTapHandler:(Action)fourthHandler{
    if(currentAlert){
        [currentAlert->alertView dismissWithClickedButtonIndex:-1 animated:YES];
        currentAlert = nil;
    }
    CPAlert *alert = [[CPAlert alloc] init];
    alert->first = handler;
    alert->second = secondHandler;
    alert->third = thirdHandler;
    alert->fourth = fourthHandler;
    alert->alertView = [[UIAlertView alloc] initWithTitle:title message:description delegate:alert cancelButtonTitle:firstButtonTitle otherButtonTitles:secondButtonTitle, thirdButtonTitle, fourthButtonTitle, nil];
    
    currentAlert = alert;
    [alert->alertView show];
    return alert->alertView;
}

+(UIAlertView*)askFor:(NSString*)title withDescription:(NSString*)description completion:(StringBlock)completion{
    if(currentAlert){
        [currentAlert->alertView dismissWithClickedButtonIndex:-1 animated:YES];
        currentAlert = nil;
    }
    CPAlert *alert = [[CPAlert alloc] init];
    alert->inputBlock = completion;
    alert->alertView = [[UIAlertView alloc] initWithTitle:title message:description delegate:alert cancelButtonTitle:NSLocalizedString(@"Cancel",@"Cancel") otherButtonTitles:NSLocalizedString(@"Okay",@"Okay"), nil];
    alert->alertView.alertViewStyle = UIAlertViewStylePlainTextInput;
    currentAlert = alert;
    [alert->alertView show];
    return alert->alertView;
}


-(void)alertView:(UIAlertView *)av willDismissWithButtonIndex:(NSInteger)buttonIndex{
    if(inputBlock){
        [[self->alertView textFieldAtIndex:0] resignFirstResponder];
        if(buttonIndex == 0){
            inputBlock(nil);
        }else{
            inputBlock([av textFieldAtIndex:0].text);
        }
    }else{
        if(buttonIndex == 0){
            if(first){
                first();
            }
        }else if(buttonIndex == 1){
            if(second){
                second();
            }
        }else if(buttonIndex == 2){
            if(third){
                third();
            }
        }else if(buttonIndex == 3){
            if(fourth){
                fourth();
            }
        }
    }
    currentAlert = nil;
}

@end
