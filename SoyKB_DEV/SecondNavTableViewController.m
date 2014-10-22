//
//  SecondNavTableViewController.m
//  SoyKB_DEV
//
//  Created by digbio lab on 10/22/14.
//  Copyright (c) 2014 SoyKBDevelopment. All rights reserved.
//

#import "SecondNavTableViewController.h"
#import "SecondNavTableViewCell.h"


@interface SecondNavTableViewController ()

@end

@implementation SecondNavTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    _TitleLabel.text = _BarDetail[0];
    self.navigationItem.title = _BarDetail[0];
    
    if ([_BarDetail[0] isEqualToString:@"Search"]) {
           _SubTitle =@[@"Genes",
                      @"miRNA/sRNA",
                      @"Metabolites",
                      @"SNP",
                      @"PI",];
        
    }
    else if([_BarDetail[0] isEqualToString:@"Browse"]) {
        _SubTitle  =@[@"Gene Families",
                      @"3D Protein Structure",
                      @"Homeologous Genes",
                      @"Phosphorylation",
                      @"G.Soja",
                      @"Genome Browser",
                      @"In Silico Breeding Program",
                      @"Fast Neutron Mutant Data",
                      @"Differential Expression",
                      @"eFP Browser",
                      @"TF-ORFeome",];
    }
    else if([_BarDetail[0] isEqualToString:@"Tools"]) {
        _SubTitle  =@[@"Affymetrix Probe ID Mapper",
                      @"Gene Pathway Viewer",
                      @"Metabolite Pathway Viewer",
                      @"MotifSampler w/ WebLOGO",
                      @"Blast",
                      @"Multiple Sequence Alignment",
                      @"Phylogeny",
                      @"Chromosome Visualizer",
                      @"Protein BioViewer",
                      @"Heatmap and Hierarchical Clustering",
                      @"ScatterPlot",
                      @"Targeted Sequence Selection",
                      @"SNPViz",
                      @"Mutant Finder",
                      @"Enrichment Analysis",];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return _SubTitle.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier2 = @"TableCell2";
    SecondNavTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier2 forIndexPath:indexPath];
    
    // Configure the cell...
    int row = [indexPath row];
    cell.SubTitleLabel.text=_SubTitle[row];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

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
