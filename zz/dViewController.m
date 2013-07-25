//
//  dViewController.m
//  zz
//
//  Created by Ibokan on 13-7-24.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import "dViewController.h"

@interface dViewController ()

@end

@implementation dViewController

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
    
    UIImageView *imageview = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"images.jpeg"]];
    imageview.frame = CGRectMake(0,0,320,480);
    [self.view addSubview:imageview];
    
    UIButton *button = [UIButton
                        buttonWithType:
                        UIButtonTypeRoundedRect];
    button.frame = CGRectMake(120,100,80,80);
    //[button setTitle:@"播放" forState: UIControlStateNormal];
    //button.backgroundColor = [UIColor clearColor];
    //[button setTitleColor:[UIColor clearColor] forState: UIControlStateNormal];
    UIImage *image = [UIImage imageNamed:@"bofang.png"];
    [button setBackgroundImage:[image
                                stretchableImageWithLeftCapWidth:12 topCapHeight:0] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(play) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
	// Do any additional setup after loading the view.
}

- (void) play {
    NSString * filePath = [[NSBundle mainBundle] pathForResource:@"tta" ofType:@"mp4"];
	NSURL * url = [NSURL fileURLWithPath:filePath];
	player = [[MPMoviePlayerViewController alloc] initWithContentURL:url];
    [player.moviePlayer setScalingMode:MPMovieScalingModeAspectFit];
	[player.moviePlayer setControlStyle:MPMovieControlStyleFullscreen];
    [self.view addSubview:player.view];
    [player.view setFrame:CGRectMake(50,50,220,220)];
    [self presentMoviePlayerViewControllerAnimated:player];
    [player.moviePlayer play];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
