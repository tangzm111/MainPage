//
//  MainPageViewController.h
//  MainPage
//
//  Created by tangze on 15/7/27.
//  Copyright (c) 2015年 com.accelerate. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainPageViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIButton *navLeftButton;
@property (strong, nonatomic) UIButton *hiddeButton;
@property (strong, nonatomic) IBOutlet UIImageView *turnDownImage;


@property (strong, nonatomic) IBOutlet UIImageView *headImage;

@property(assign,nonatomic) NSInteger MainPageType;
@end
