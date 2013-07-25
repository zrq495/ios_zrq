//
//  bViewController.h
//  zz
//
//  Created by Ibokan on 13-7-24.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface bViewController : UIViewController<UITextFieldDelegate>
{
    //AVAudioPlayer *audioPlayer;
    UIProgressView *pView;
    UILabel *label;
    NSString *name, *passwd;
}

- (void) denglu;
- (void) zhuce;
- (void) wangji;

//- (IBAction)button:(id)sender;

@property(nonatomic, copy) NSString *name, *passwd;

@end
