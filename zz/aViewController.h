//
//  aViewController.h
//  zz
//
//  Created by Ibokan on 13-7-24.
//  Copyright (c) 2013年 Ibokan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface aViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *items;
}
- (void) haha;

@property (nonatomic,retain) NSArray *items;

@end
