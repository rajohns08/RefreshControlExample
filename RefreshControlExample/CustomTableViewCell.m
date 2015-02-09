//
//  CustomTableViewCell.m
//  RefreshControlExample
//
//  Created by Adam Johns on 2/9/15.
//  Copyright (c) 2015 Adam Johns. All rights reserved.
//

#import "CustomTableViewCell.h"

@implementation CustomTableViewCell

- (void)awakeFromNib {
    // Initialization code
    self.middleView.layer.cornerRadius = self.middleView.frame.size.width/2;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
