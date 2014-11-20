//
//  ResultTableController.h
//  SoyKB_DEV
//
//  Created by digbio lab on 11/19/14.
//  Copyright (c) 2014 SoyKBDevelopment. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Gene.h"

@interface ResultTableController : UITableViewController

@property (strong,nonatomic) Gene * gene2;

@property (strong, nonatomic) NSArray * Info;


@end
