//
//  SearchViewController.m
//  MainPage
//
//  Created by tangze on 15/7/28.
//  Copyright (c) 2015年 com.accelerate. All rights reserved.
//

#import "SearchViewController.h"
#import "MainthreeCell.h"
@interface SearchViewController ()<UITableViewDataSource,UITableViewDelegate>{



    NSInteger   count;
}

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    count=0;
//    [self.navigationController.view setBackgroundColor:[UIColor colorWithRed:243/255.0 green:244/255.0 blue:249/255.0 alpha:1]];
//    [self.navigationController.navigationBar setBackgroundColor:[UIColor colorWithRed:243/255.0 green:244/255.0 blue:249/255.0 alpha:1]];
//    self.navigationController.navigationBar.translucent=NO;
    
[self.navigationController.navigationBar  setBarTintColor:[UIColor colorWithRed:243/255.0 green:244/255.0 blue:249/255.0 alpha:1]];
    
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    UIBarButtonItem *barbtn=[[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.leftBarButtonItem=barbtn;

    UITapGestureRecognizer  *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(textFieldLostFristResponder)];

    
    [self.view addGestureRecognizer:tap];
    
    _searchTextField.delegate=self;
    
    
    
    _tableView.delegate=self;
    _tableView.dataSource=self;
    
    [_tableView registerNib:[UINib nibWithNibName:@"MainthreeCell" bundle:nil] forCellReuseIdentifier:@"threeCell"];
    

    
}
/**
 *  textField  代理方法
 */
-(void)textFieldLostFristResponder{

    [_searchTextField resignFirstResponder];

}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{



    [_searchTextField resignFirstResponder];
    return YES;
}


- (IBAction)navCancelButtonAction:(id)sender {
    
    
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillDisappear:(BOOL)animated{


    [self.navigationController.navigationBar  setBarTintColor:[UIColor whiteColor]];



}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    return 85;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    
    return count;
    
}
-(UITableViewCell  *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    
    MainthreeCell *cell=[tableView dequeueReusableCellWithIdentifier:@"threeCell" forIndexPath:indexPath];
    
    return cell;
}

-(void)textFieldDidEndEditing:(UITextField *)textField{



     count=2;
    [_tableView reloadData];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
