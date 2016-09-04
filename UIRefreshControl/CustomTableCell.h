//
//  CustomTableCell.h
//  UIRefreshControl
//
//  Created by Mahaboobsab Nadaf on 03/09/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *loanName;
@property (weak, nonatomic) IBOutlet UILabel *loanCountry;
@property (weak, nonatomic) IBOutlet UILabel *loanUse;
@property (weak, nonatomic) IBOutlet UILabel *loanAmount;

@end
