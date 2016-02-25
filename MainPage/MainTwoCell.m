//
//  MainTwoCell.m
//  MainPage
//
//  Created by tangze on 15/7/27.
//  Copyright (c) 2015年 com.accelerate. All rights reserved.
//

#import "MainTwoCell.h"

@implementation MainTwoCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)oneButtonAction:(id)sender {
    
    _clickOneBlock(sender);
    
}
- (IBAction)twoButtonAction:(id)sender {
    
    _clickTwoBlock(sender);
}

@end
