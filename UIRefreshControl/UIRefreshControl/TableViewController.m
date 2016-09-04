//
//  TableViewController.m
//  UIRefreshControl
//
//  Created by Mahaboobsab Nadaf on 03/09/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "TableViewController.h"
#import "CustomTableCell.h"
#import "LoanClass.h"

@interface TableViewController (){
    NSMutableArray *loans;
}


@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    // Initialize the refresh control.
    self.refreshControl = [[UIRefreshControl alloc] init];
    self.refreshControl.backgroundColor = [UIColor purpleColor];
    self.refreshControl.tintColor = [UIColor whiteColor];
    [self.refreshControl addTarget:self
                            action:@selector(getLatestLoans)
                  forControlEvents:UIControlEventValueChanged];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)getLatestLoans{

NSURLSession *session = [NSURLSession sharedSession];
NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:@"http://api.kivaws.org/v1/loans/newest.json"]completionHandler:^(NSData * data, NSURLResponse *  response, NSError *  error) {
    
    
        if (!error) {
            NSArray *latestLoans = [self fetchData:data];
            loans = [NSMutableArray arrayWithCapacity:10];
            
            if (latestLoans) {
                for (NSDictionary *loanDic in latestLoans) {
                    LoanClass *loan = [[LoanClass alloc] init];
                    loan.name = [loanDic objectForKey:@"name"];
                    loan.amount = [loanDic objectForKey:@"loan_amount"];
                    loan.use = [loanDic objectForKey:@"use"];
                    loan.country = [[loanDic objectForKey:@"location"] objectForKey:@"country"];
                    
                    [loans addObject:loan];
                }
            }
            
            // As this block of code is run in a background thread, we need to ensure the GUI
            // update is executed in the main thread
            [self performSelectorOnMainThread:@selector(reloadData) withObject:nil waitUntilDone:NO];
            
        }
    }];
    
    [dataTask resume];
}


- (NSArray *)fetchData:(NSData *)response
{
    NSError *error = nil;
    NSDictionary *parsedData = [NSJSONSerialization JSONObjectWithData:response options:0 error:&error];
    
    if (error != nil) {
        NSLog(@"Error: %@", error.description);
        return nil;
    }
    
    NSArray* latestLoans = [parsedData objectForKey:@"loans"];
    
    return latestLoans;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if (loans) {
        return [loans count];
    }
    
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    LoanClass *loan = [loans objectAtIndex:indexPath.row];
    cell.loanName.text = loan.name;
    cell.loanUse.text = loan.use;
    cell.loanCountry.text = loan.country;
    cell.loanAmount.text = [NSString stringWithFormat:@"$%@", [loan.amount stringValue]];
    
    return cell;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    if (loans) {
        
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        return 1;
        
    } else {
        
        // Display a message when the table is empty
        UILabel *messageLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
        
        messageLabel.text = @"No data is currently available. Please pull down to refresh.";
        messageLabel.textColor = [UIColor blackColor];
        messageLabel.numberOfLines = 0;
        messageLabel.textAlignment = NSTextAlignmentCenter;
        messageLabel.font = [UIFont fontWithName:@"Palatino-Italic" size:20];
        [messageLabel sizeToFit];
        
        self.tableView.backgroundView = messageLabel;
        self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        
    }
    
    return 0;
}



- (void)reloadData
{
    // Reload table data
    [self.tableView reloadData];
    
    // End the refreshing
    if (self.refreshControl) {
        
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"MMM d, h:mm a"];
        NSString *title = [NSString stringWithFormat:@"Last update: %@", [formatter stringFromDate:[NSDate date]]];
        NSDictionary *attrsDictionary = [NSDictionary dictionaryWithObject:[UIColor whiteColor]
                                                                    forKey:NSForegroundColorAttributeName];
        NSAttributedString *attributedTitle = [[NSAttributedString alloc] initWithString:title attributes:attrsDictionary];
        self.refreshControl.attributedTitle = attributedTitle;
        
        [self.refreshControl endRefreshing];
    }
}

@end
