//
//  SearchViewController.h
//  MainPage
//
//  Created by tangze on 15/7/28.
//  Copyright (c) 2015年 com.accelerate. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SearchViewController : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *searchTextField;
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end
