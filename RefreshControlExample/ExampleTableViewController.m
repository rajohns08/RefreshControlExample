//
//  ExampleTableViewController.m
//  RefreshControlExample
//
//  Created by Adam Johns on 2/9/15.
//  Copyright (c) 2015 Adam Johns. All rights reserved.
//

@import QuartzCore;

#import "ExampleTableViewController.h"
#import "CustomTableViewCell.h"

@interface ExampleTableViewController ()

@end

@implementation ExampleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ExampleReuse" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.label.text = @"Feb 23";
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (IBAction)refresh:(id)sender {
    double delayInSeconds = 4.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    
    [self.refreshControl beginRefreshing];
    dispatch_after(popTime, dispatch_get_main_queue(), ^{
        [self.refreshControl endRefreshing];
    });
}

@end
