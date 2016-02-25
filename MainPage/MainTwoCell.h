//
//  MainTwoCell.h
//  MainPage
//
//  Created by tangze on 15/7/27.
//  Copyright (c) 2015年 com.accelerate. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^sendBlock)(id);


@interface MainTwoCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIButton *oneButton;
@property (strong, nonatomic) IBOutlet UIButton *twoButton;

@property (strong,nonatomic) sendBlock  clickOneBlock;
@property (strong,nonatomic) sendBlock clickTwoBlock;


@end
