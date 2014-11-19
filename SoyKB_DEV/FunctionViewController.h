//
//  FunctionViewController.h
//  SoyKB_DEV
//
//  Created by digbio lab on 11/18/14.
//  Copyright (c) 2014 SoyKBDevelopment. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Gene.h"

@interface FunctionViewController : UIViewController
@property (strong, nonatomic) NSArray *FunBarDetail;
@property (strong, nonatomic) IBOutlet UILabel *TitleLabel;

@property (weak, nonatomic) IBOutlet UITextField *geneID;
@property (nonatomic, strong) NSMutableArray * jsonArray;
//@property (nonatomic, strong)  Gene * gene;

- (IBAction)backgroundTap:(id)sender;



@end
