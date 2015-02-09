//
//  CustomTableViewCell.h
//  RefreshControlExample
//
//  Created by Adam Johns on 2/9/15.
//  Copyright (c) 2015 Adam Johns. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *middleView;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end
