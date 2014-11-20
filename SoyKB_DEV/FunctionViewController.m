//
//  FunctionViewController.m
//  SoyKB_DEV
//
//  Created by digbio lab on 11/18/14.
//  Copyright (c) 2014 SoyKBDevelopment. All rights reserved.
//

#import "FunctionViewController.h"
<<<<<<< HEAD
#import "ResultTableController.h"
=======
<<<<<<< HEAD
#import "ResultTableController.h"
=======
>>>>>>> FETCH_HEAD
>>>>>>> FETCH_HEAD

@interface FunctionViewController ()

@end

@implementation FunctionViewController
<<<<<<< HEAD
@synthesize jsonArray/*,gene*/;
=======
<<<<<<< HEAD
@synthesize jsonArray/*,gene*/;
=======
>>>>>>> FETCH_HEAD
>>>>>>> FETCH_HEAD

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _TitleLabel.text = _FunBarDetail[0];
     self.navigationItem.title = _FunBarDetail[0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> FETCH_HEAD
- (IBAction)backgroundTap:(id)sender {
    [self.view endEditing:YES];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([[segue identifier] isEqualToString:@"ShowResult"]){
        ResultTableController *resultview = [segue destinationViewController];
        resultview.gene2 = [[Gene alloc] init];
        //gene= [[Gene alloc] init];
        
        if ([[self.geneID text] isEqualToString:@""]) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"alert" message:@"Please Fill the field" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
            return;
        }
        NSString *strURL = [NSString stringWithFormat:@"http://babbage.cs.missouri.edu/~bx3g3/SoyKB/searchByID.php?geneID=%@",[self.geneID text]];
        
        // to execute php code
        NSData *dataURL = [NSData dataWithContentsOfURL:[NSURL URLWithString:strURL]];
        
        jsonArray = [NSJSONSerialization JSONObjectWithData:dataURL options:kNilOptions error: nil];
        
        if ([jsonArray count]==0) {
            [resultview.gene2 initWithGlymaid:@"" andQuerySize:@"" andHit1:@"" andAnnotation1:@"" andScore1:@"" andEvalue1:@"" andIdentity1:@""];
            UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"alert" message:@"No match gene found" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
            
            return;
            
        }else if([jsonArray count]==1) {
            //UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"alert" message:@"found it" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            //[alert show];
            
            //LOOP THROUGH OUR JSON ARRAY
            //create gene object
            NSString *  Glymaid =[[jsonArray objectAtIndex:0] objectForKey:@"Glymaid"];
            NSString *  querysize=[[jsonArray objectAtIndex:0] objectForKey:@"QuerySize"];
            NSString *  hit1 =[[jsonArray objectAtIndex:0] objectForKey:@"Hit_1"];
            NSString *  annotation1 =[[jsonArray objectAtIndex:0] objectForKey:@"Annotation_1"];
            NSString *  score1 =[[jsonArray objectAtIndex:0] objectForKey:@"Score_1"];
            NSString *  evalue1 =[[jsonArray objectAtIndex:0] objectForKey:@"Evalue_1"];
            NSString *  identity1 =[[jsonArray objectAtIndex:0] objectForKey:@"Identity_1"];
            
            //[gene initWithGlymaid:Glymaid andQuerySize:querysize andHit1:hit1 andAnnotation1:annotation1 andScore1:score1 andEvalue1:evalue1 andIdentity1:identity1];
            
            [resultview.gene2 initWithGlymaid:Glymaid andQuerySize:querysize andHit1:hit1 andAnnotation1:annotation1 andScore1:score1 andEvalue1:evalue1 andIdentity1:identity1];
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"alert" message:@"Found it" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
            return;
            
        }
        else{
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"alert" message:@"Bad news, mutiple genes with same id exist!" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [alert show];
        }
        
        
    }
}
<<<<<<< HEAD
=======
=======
>>>>>>> FETCH_HEAD
>>>>>>> FETCH_HEAD
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
