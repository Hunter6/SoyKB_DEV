//
//  ViewController.h
//  SoyKB_DEV
//
//  Created by digbio lab on 10/16/14.
//  Copyright (c) 2014 SoyKBDevelopment. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *txtUsername;

@property (weak, nonatomic) IBOutlet UITextField *txtPassword;

- (IBAction)signinClicked:(id)sender;
- (IBAction)registerClicked:(id)sender;
- (IBAction)backgroundTap:(id)sender;

@end
