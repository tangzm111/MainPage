//
//  MainPageViewController.m
//  MainPage
//
//  Created by tangze on 15/7/27.
//  Copyright (c) 2015年 com.accelerate. All rights reserved.
//

#import "MainPageViewController.h"
#import "MainTwoCell.h"
#import "MainthreeCell.h"
#import "MainFourCell.h"
#import "SearchViewController.h"
#import "LastTrendsViewController.h"
@interface MainPageViewController ()<UITableViewDataSource,UITableViewDelegate>{


    NSArray * titleArray;
    

}

@end

@implementation MainPageViewController
- (IBAction)headButtonAction:(id)sender {
    
    NSLog(@"表头事件");
    
}













/**
 *  navButtonAction
 */

-(void)hiddeButtonAction{

    _hiddeButton.hidden=YES;




}
-(IBAction)navLeftButtonAction:(id)sender {
    

    
    _hiddeButton.hidden=NO;
    
}

- (IBAction)navRightButtonAction:(id)sender {
    
    
    UIStoryboard * st=[UIStoryboard  storyboardWithName:@"MainPageStoryboard" bundle:nil];
    SearchViewController *sVc=     [st instantiateViewControllerWithIdentifier:@"searchView"];
    
    [self.navigationController pushViewController:sVc  animated:YES];
    
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    

    
    
    
    
    
    
    
    
    if (_MainPageType==1) {
        
        _hiddeButton=[UIButton buttonWithType:UIButtonTypeCustom];
        _hiddeButton.frame=CGRectMake(35,55, 123/1.3, 52/1.3);
        [_hiddeButton setBackgroundImage:[UIImage imageNamed:@"标签@1x"] forState:UIControlStateNormal];
        [_hiddeButton   addTarget:self action:@selector(hiddeButtonAction) forControlEvents:UIControlEventTouchUpInside];
        [self.navigationController.view addSubview:_hiddeButton];
        _hiddeButton.hidden=YES;
      
        _turnDownImage.hidden=NO;
    }
     

    
    
    titleArray=@[@"热门推荐",@"最新动态",@"沙龙精选",@"我的沙龙"];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.translucent=NO;
    [self.navigationController.navigationBar setBackgroundColor:[UIColor  whiteColor]];
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    UIBarButtonItem *barbtn=[[UIBarButtonItem alloc]initWithCustomView:button];
    self.navigationItem.leftBarButtonItem=barbtn;

    _tableView.delegate=self;
    _tableView.dataSource=self;
    
    [_tableView registerNib:[UINib nibWithNibName:@"MainthreeCell" bundle:nil] forCellReuseIdentifier:@"threeCell"];
    
}
/**
 *  tableView 代理方法
 
 *


 *
 *  @return <#return value description#>
 */
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{



    if (indexPath.row==0||indexPath.row==2||indexPath.row==6||indexPath.row==8) {
        return 50;
    }
    else if(indexPath.row==1){
    
    
        return 165;
    }
    else if(indexPath.row>2&&indexPath.row<=5){
    
    
        return 85;
    }
    else if(indexPath.row==7){
    
        return 130;
    

    }
    
    else{
    
    
        return 85;
    }
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    if (_MainPageType==1) {
            return 12;
    }
    
    else{
    
    
    
        return 8;
    }

}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{


    if ( indexPath.row==0||indexPath.row==2||indexPath.row==6||indexPath.row==8) {
       
        UITableViewCell *cell=[_tableView dequeueReusableCellWithIdentifier:@"oneCell" forIndexPath:indexPath];
        
      
        int a ;
        switch (indexPath.row) {
            case 0: a=0;
                
                break;
            case 2: a=1;
                
                break;
            case 6: a=2;
                
                break;
            case 8: a=3;
                
                break;
            default:
                break;
        }
        
        
       
       cell.textLabel.text=titleArray[a];
       
        
        return cell;
        
        
    }
  else if(indexPath.row==1){
       
 MainTwoCell  *cell=[_tableView dequeueReusableCellWithIdentifier:@"twoCell" forIndexPath:indexPath];


      /**
       *    图片点击事件添加
       */
      
      
      
      cell.clickOneBlock=^(UIButton *sender){
      
          NSLog(@"twocellone");
      
      };
      
      cell.clickTwoBlock=^(UIButton *sender){
      
      
          NSLog(@"twoCelltwo");
      
      
      };
      
      
      
      
       
       return cell;
       
    }

    
  else if((indexPath.row>2&&indexPath.row<=5)||(indexPath.row>8)){
      
      MainthreeCell *cell=[_tableView dequeueReusableCellWithIdentifier:@"threeCell" forIndexPath:indexPath];
      if (indexPath.row>8) {
          
       cell.timeLabel.text=@"";
      
      
      }
      else{
      
      
      
       cell.timeLabel.text=@"50分钟前";
      }
      return cell;
  }

  else if(indexPath.row==7){
  
      MainFourCell *cell=[_tableView dequeueReusableCellWithIdentifier:@"fourCell" forIndexPath:indexPath];
      
  
      /**
       *    图片点击事件添加
       */
      

      
      cell.ButtonClick=^(UIButton *sender){
      
          if (sender.tag==101) {

              NSLog(@"fourCellone");
              
              
          }
          else if(sender.tag==102){
         
              
              
              NSLog(@"fourCelltwo");
              
          
          }
          else{
          
          
              NSLog(@"fourCellthree");
          
          
          }
          
      
      
      };
  
  
  
  
  
  return cell;
  
  
  }
  else {
  
  
      return nil;
  }
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    if ( indexPath.row==0||indexPath.row==2||indexPath.row==6||indexPath.row==8) {


        UIStoryboard  * st=[UIStoryboard storyboardWithName:@"MainPageStoryboard" bundle:[ NSBundle mainBundle]];
        
        
       LastTrendsViewController *vc=         [st instantiateViewControllerWithIdentifier:@"LastTrends"];
        
        
        [self.navigationController pushViewController:vc animated:YES];
        
    }

    else if((indexPath.row>2&&indexPath.row<=5)||(indexPath.row>8)){
    
    
        
    
    
    
    
    
    }
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
