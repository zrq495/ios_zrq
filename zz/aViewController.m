//
//  aViewController.m
//  zz
//
//  Created by Ibokan on 13-7-24.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import "aViewController.h"
#import "bViewController.h"
#import "cViewController.h"
#import "dViewController.h"

@interface aViewController ()

@end

@implementation aViewController

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
    
    UIImageView *imageview = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"20110102174634-2133871153.jpg"]];
    imageview.frame = CGRectMake(0,0,320,480);
    [self.view addSubview:imageview];
    
    self.items = [[NSArray alloc] initWithObjects:@"尚品",@"音乐",@"视频", @"木有了",@"木有了",@"木有了",@"木有了",@"木有了", nil];
    
    UITableView *tableview=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 480) style:UITableViewStylePlain];
    tableview.backgroundColor = [UIColor clearColor];
    //tableview.backgroundColor = [UIColor colorWithRed:54.0/255.0 green:161.0/255.0 blue:219.0/255.0 alpha:1];
    //tableview.backgroundColor = [UIColor colorWithRed:135.0/255.0 green:135.0/255.0 blue:135.0/255.0 alpha:1];
    tableview.dataSource=self;
    tableview.delegate=self;
    //self.navigationController.navigationBar.tintColor = [UIColor orangeColor];
    
    //UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(haha1)];
    //self.navigationItem.leftBarButtonItem = left;
    
    UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithTitle:@"音乐" style:UIBarButtonItemStyleDone target:self action:@selector(haha1)];
    self.navigationItem.leftBarButtonItem = left;
    
    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithTitle:@"视频" style:UIBarButtonItemStyleDone target:self action:@selector(haha2)];
    self.navigationItem.rightBarButtonItem = right;
    
    self.navigationItem.title = @"应用";
    
    [self.view addSubview:tableview];

    
	// Do any additional setup after loading the view.
}

- (void) haha {
    bViewController *bview=[[bViewController alloc]init];
    [self.navigationController pushViewController:bview animated:YES];
}

- (void) haha1 {
    cViewController *cview=[[cViewController alloc]init];
    [self.navigationController pushViewController:cview animated:YES];
}

- (void) haha2 {
    dViewController *dview=[[dViewController alloc]init];
    [self.navigationController pushViewController:dview animated:YES];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"identify";//定义一个标识符，方便重用
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];//根据重用标识符找到能进行重用的cell，刚开始初始化tableview的时候，cell为空，一旦tableview创建完毕，cell就可以重用了（上下滚动的时候，cell不再为空）
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];//首次创建cell的时候指定一个标识符，方便以后重用。
    }
    cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    cell.textLabel.text = [self.items objectAtIndex:indexPath.row];
    //cell.textLabel.text = @"aaaaa";
    /*UILabel *label=[[UILabel alloc]init];
     label.frame=CGRectMake(10, 10, 50, 50);
     label.backgroundColor=[UIColor grayColor];
     [cell.contentView addSubview:label];
     
     UIImageView *imageview = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"BG.png"]];
     imageview.frame = CGRectMake(10,10,50,50);
     [cell.contentView addSubview:imageview];*/
    
    switch (indexPath.row)
    {
        case 0:
            cell.imageView.image = [UIImage imageNamed:@"blogcolor02.png"];
            //cell.textLabel.text = @"aaaaaa";
            break;
            
        case 1:
            cell.imageView.image = [UIImage imageNamed:@"itunescolor02.png"];
            break;
            
        case 2:
            cell.imageView.image = [UIImage imageNamed:@"incolor02.png"];
            break;
            
        default:
            cell.imageView.image = [UIImage imageNamed:@"google2.png"];
            break;
    }
    cell.textLabel.backgroundColor = [UIColor clearColor];
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"~~~~~~~";
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"selected row %d",indexPath.row);
    [tableView deselectRowAtIndexPath:indexPath animated:YES];//选中后的反显颜色即刻消失
    //bViewController *bview=[[bViewController alloc]init];
    //[self.navigationController pushViewController:bview animated:YES];
    switch (indexPath.row)
    {
        case 0:
        {
            bViewController *bview=[[bViewController alloc]init];
            [self.navigationController pushViewController:bview animated:YES];
            break;
        }
            
        case 1:
        {
            cViewController *cview=[[cViewController alloc]init];
            [self.navigationController pushViewController:cview animated:YES];
            break;
        }
            
        case 2:
        {
            dViewController *dview=[[dViewController alloc]init];
            [self.navigationController pushViewController:dview animated:YES];
            break;
        }
            
        default:
        {
            dViewController *dview=[[dViewController alloc]init];
            [self.navigationController pushViewController:dview animated:YES];
            break;
        }
    }
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
