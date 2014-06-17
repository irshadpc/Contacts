//
// Created by Lukas Kollmer on 17/06/14.
// Copyright (c) 2014 Lukas Kollmer. All rights reserved.
//

#import "MainTableViewController.h"


@implementation MainTableViewController {

}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section)
    {
        case 0:
            return @""; // This adds a small space above the first section
        case 1:
            return @"";
        default:
            return nil;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Did select section %i, row %i", indexPath.section, indexPath.row);
}
@end