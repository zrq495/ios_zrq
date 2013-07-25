//
//  cViewController.h
//  zz
//
//  Created by Ibokan on 13-7-24.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface cViewController : UIViewController
{
    AVAudioPlayer *audioPlayer;
    UIProgressView *pView;
    UILabel *label;
}
-(void)bf;
-(void)zt;
-(void)stop;
-(void)showProgress;

@end
