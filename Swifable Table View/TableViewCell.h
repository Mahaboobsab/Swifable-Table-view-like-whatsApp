//
//  TableViewCell.h
//  Swifable Table View
//
//  Created by Mahaboobsab Nadaf on 17/10/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIView *swipableUIView;
@property (weak, nonatomic) IBOutlet UIButton *deleteButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *editButtonOutlet;
@property (weak, nonatomic) IBOutlet UIButton *moreButtonOutlet;
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;


@end
