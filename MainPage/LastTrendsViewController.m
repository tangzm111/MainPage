//
//  LastTrendsViewController.m
//  MainPage
//
//  Created by tangze on 15/7/27.
//  Copyright (c) 2015年 com.accelerate. All rights reserved.
//

#import "LastTrendsViewController.h"
#import "MainthreeCell.h"
@interface LastTrendsViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation LastTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    _tableView.delegate=self;
    _tableView.dataSource=self;
    
    [_tableView registerNib:[UINib nibWithNibName:@"MainthreeCell" bundle:nil] forCellReuseIdentifier:@"threeCell"];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{



    return 85;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{



    return 5;

}
-(UITableViewCell  *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

 
 
    
    MainthreeCell *cell=[tableView dequeueReusableCellWithIdentifier:@"threeCell" forIndexPath:indexPath];
 
    return cell;
}


@end
