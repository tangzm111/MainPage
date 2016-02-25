//
//  ViewController.m
//  MainPage
//
//  Created by tangze on 15/7/27.
//  Copyright (c) 2015年 com.accelerate. All rights reserved.
//

#import "ViewController.h"
#import "MainPageViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)BUttonasnfdsno:(id)sender {
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"MainPageStoryboard" bundle:[NSBundle mainBundle]];
 MainPageViewController   *cvc = [sb instantiateViewControllerWithIdentifier:@"MainPage"];

    cvc.MainPageType=1;
//    [self presentViewController:cvc animated:YES completion:nil];
    [self.navigationController pushViewController:cvc animated:YES];

    
    
}

@end
