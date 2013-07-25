//
//  cViewController.m
//  zz
//
//  Created by Ibokan on 13-7-24.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import "cViewController.h"

@interface cViewController ()

@end

@implementation cViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImageView *imageview = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"2010052217292099861.jpg"]];
    imageview.frame = CGRectMake(0,0,320,480);
    [self.view addSubview:imageview];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"没那么简单" ofType:@"mp3"];
    NSLog(@"path%@",path);
    
    NSURL *url = [[NSURL alloc] initFileURLWithPath:path];
    NSError *error;
    audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    if(error)
    {
        NSLog(@"error = %@",[error localizedDescription]);
    }
    [audioPlayer prepareToPlay];
    
    
    UIButton *button = [UIButton
                        buttonWithType:
                        UIButtonTypeRoundedRect];
    button.frame = CGRectMake(40,200,80,80);
    //[button setTitle:@"bf" forState: UIControlStateNormal];
    //[button setTitleColor:[UIColor greenColor] forState: UIControlStateNormal];
    UIImage *image = [UIImage imageNamed:@"bofang.png"];
    [button setBackgroundImage:[image
                                stretchableImageWithLeftCapWidth:12 topCapHeight:0] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(bf) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *button1 = [UIButton
                         buttonWithType:
                         UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(200,200,80,80);
    //[button1 setTitle:@"zt" forState: UIControlStateNormal];
    //[button1 setTitleColor:[UIColor greenColor] forState: UIControlStateNormal];
    UIImage *image1 = [UIImage imageNamed:@"zanting.png"];
    [button1 setBackgroundImage:[image1
                                 stretchableImageWithLeftCapWidth:12 topCapHeight:0] forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(zt) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton
                         buttonWithType:
                         UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(120,200,80,80);
    //[button2 setTitle:@"stop" forState: UIControlStateNormal];
    //[button2 setTitleColor:[UIColor greenColor] forState: UIControlStateNormal];
    UIImage *image2 = [UIImage imageNamed:@"tingzhi.png"];
    [button2 setBackgroundImage:[image2
                                 stretchableImageWithLeftCapWidth:12 topCapHeight:0] forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(stop) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    label = [[UILabel alloc]init];
    //label.text = @"姓名";
    //label.textColor=[UIColor greenColor];
    label.backgroundColor = [UIColor clearColor];
    label.frame = CGRectMake(60,140,240,20);
    [self.view addSubview:label];
    
    
    pView = [[UIProgressView alloc] initWithProgressViewStyle:UIProgressViewStyleDefault];
    pView.progressTintColor = [UIColor redColor];
    pView.trackTintColor = [UIColor yellowColor];
    pView.frame = CGRectMake(50, 160, 220, 30);
    pView.progress = 0;
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(showProgress) userInfo:nil repeats:YES];
    [self.view addSubview:pView];
    
	// Do any additional setup after loading the view.
}

-(void) bf {
    [audioPlayer play];
}

-(void) zt {
    [audioPlayer pause];
}

-(void) stop {
    [audioPlayer stop];
    audioPlayer.currentTime = 0;
    pView.progress = 0;
}

-(void) showProgress {
    if (audioPlayer.isPlaying)
    {
        pView.progress = audioPlayer.currentTime/audioPlayer.duration;
        int per = (int)(pView.progress * 100);
        int cur = (int)audioPlayer.currentTime;
        int dur = (int)audioPlayer.duration;
        int fen = (dur - cur) / 60;
        int miao = (dur - cur) % 60;
        label.text = [NSString stringWithFormat:@"进度：%3d%%               -%2d:%2d", per, fen, miao];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
