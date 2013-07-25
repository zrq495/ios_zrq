//
//  bViewController.m
//  zz
//
//  Created by Ibokan on 13-7-24.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import "bViewController.h"

@interface bViewController ()

@end

@implementation bViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

/*
- (IBAction)button:(id)sender {
    
    //取消目前是第一回应者（键盘消失）
    [sender resignFirstResponder];
}
 */



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImageView *imageview = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"BG.png"]];
    imageview.frame = CGRectMake(0,0,320,480);
    [self.view addSubview:imageview];
    
    UIImageView *imageview1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"LoginBG.png"]];
    imageview1.frame = CGRectMake(10,130,300,150);
    [self.view addSubview:imageview1];
    
    UILabel *label = [[UILabel alloc]init];
    label.text = @"姓名";
    //label.textColor=[UIColor greenColor];
    label.backgroundColor = [UIColor clearColor];
    label.frame = CGRectMake(60,180,40,20);
    //label.textAlignment = UITextAlignmentCenter;
    [self.view addSubview:label];
    
    UILabel *label1 = [[UILabel alloc]init];
    label1.text = @"密码";
    //label1.textColor=[UIColor greenColor];
    label1.backgroundColor = [UIColor clearColor];
    label1.frame = CGRectMake(60,210,40,20);
    //label1.textAlignment = UITextAlignmentCenter;
    [self.view addSubview:label1];
    
    UITextField *textField=[[UITextField alloc]init];
    textField.borderStyle=UITextBorderStyleRoundedRect;
    // textField.backgroundColor=[UIColor redColor];
    textField.frame=CGRectMake(100, 180, 150, 20);
    name = textField.text;
    textField.delegate = self;
    [self.view addSubview:textField];
    
    UITextField *textField1=[[UITextField alloc]init];
    textField1.borderStyle=UITextBorderStyleRoundedRect;
    // textField.backgroundColor=[UIColor redColor];
    textField1.frame=CGRectMake(100, 210, 150, 20);
    textField1.secureTextEntry = YES;
    passwd = textField.text;
    textField1.delegate = self;
    [self.view addSubview:textField1];
    
    UIButton *button = [UIButton
                        buttonWithType:
                        UIButtonTypeRoundedRect];
    button.frame = CGRectMake(70,240,50,20);
    [button setTitle:@"登陆" forState: UIControlStateNormal];
    //[button setTitleColor:[UIColor greenColor] forState: UIControlStateNormal];
    UIImage *image = [UIImage imageNamed:@"buttonBG.png"];
    [button setBackgroundImage:[image
                                stretchableImageWithLeftCapWidth:12 topCapHeight:0] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(denglu) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *button1 = [UIButton
                         buttonWithType:
                         UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(200,240,50,20);
    [button1 setTitle:@"注册" forState: UIControlStateNormal];
    //[button1 setTitleColor:[UIColor greenColor] forState: UIControlStateNormal];
    UIImage *image1 = [UIImage imageNamed:@"buttonBG.png"];
    [button1 setBackgroundImage:[image1
                                 stretchableImageWithLeftCapWidth:12 topCapHeight:0] forState:UIControlStateNormal];
    [button1 addTarget:self action:@selector(zhuce) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton *button2 = [UIButton
                         buttonWithType:
                         UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(125,240,70,20);
    [button2 setTitle:@"忘记密码" forState: UIControlStateNormal];
    //[button2 setTitleColor:[UIColor greenColor] forState: UIControlStateNormal];
    UIImage *image2 = [UIImage imageNamed:@"buttonBG.png"];
    [button2 setBackgroundImage:[image2
                                 stretchableImageWithLeftCapWidth:12 topCapHeight:0] forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(wangji) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
	// Do any additional setup after loading the view.
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField{

    [textField resignFirstResponder];
    return YES;

}
-(void) denglu {
    //Bool r = [self.name isEqualToString:@"123"];
    /*if ([self.name isEqualToString:@"123"])
    {
        NSLog(@"登陆成功");
    }
    else
    {*/
        NSLog(@"登陆成功");
    //}
}

-(void) zhuce {
    NSLog(@"注册");
}

-(void) wangji {
    NSLog(@"忘记密码");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
