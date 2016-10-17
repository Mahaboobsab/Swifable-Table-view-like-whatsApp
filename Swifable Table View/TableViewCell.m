//
//  TableViewCell.m
//  Swifable Table View
//
//  Created by Mahaboobsab Nadaf on 17/10/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "TableViewCell.h"
static UIView *lastOpenedCellView;
@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    UISwipeGestureRecognizer *leftSwipeGesture=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(SwipeCellLeft:)];
    leftSwipeGesture.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.swipableUIView addGestureRecognizer:leftSwipeGesture];
    
    UISwipeGestureRecognizer *rightSwipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(SwipeCellRight:)];
    rightSwipeGesture.direction=UISwipeGestureRecognizerDirectionRight;
    [self.swipableUIView addGestureRecognizer:rightSwipeGesture];
}



- (void)SwipeCellLeft:(UISwipeGestureRecognizer *)recognizer
{
    
    
    UIView *upperView  = recognizer.view;
    NSLog(@"Val of X : %f",upperView.frame.origin.x);
    NSLog(@"Val of Y : %f",upperView.frame.origin.y);
    if (lastOpenedCellView!=nil) {
        //[self hideButtonsForView:lastOpenedCellView];
    }
    
    if (upperView.frame.origin.x == -170.000000
) {
        [self hideButtonsForView:upperView];
    }
    else if(upperView.frame.origin.x == 72.000000){
        
        [self hideButtonsForView : upperView];
    }
    else{
    lastOpenedCellView=upperView;
    [self showHiddenButtonsForView:upperView];
    
  //  NSLog(@"Val of X : %f",upperView.frame.origin.x);
    }
}
- (void)SwipeCellRight:(UISwipeGestureRecognizer *)recognizer
{
    
     UIView *upperView  = recognizer.view;
    NSLog(@"Val of X : %f",upperView.frame.origin.x);
    NSLog(@"Val of Y : %f",upperView.frame.origin.y);
    if (upperView.frame.origin.x == 0.000000) {
        [self showHiddenButtonsForView2:upperView];
    }
    
    
    else{
    [self hideButtonsForView:upperView];
    
    }
   // [self showHiddenButtonsForView2:upperView];
}

-(void)showHiddenButtonsForView:(UIView *)cellView
{
    [UIView animateWithDuration:0.5
                          delay:0.5
         usingSpringWithDamping:0.4
          initialSpringVelocity:0.5
                        options:0 animations:^{
                            cellView.frame=CGRectMake(-170, 0,  cellView.frame.size.width, cellView.frame.size.height);
                        }
                     completion:^(BOOL finished) {
                         //[self hideButtonsForView:cellView];
                     }];
}
-(void)hideButtonsForView:(UIView *)cellView
{
    [UIView animateWithDuration:0.5
                          delay:0.5
         usingSpringWithDamping:0.4
          initialSpringVelocity:0.5
                        options:0 animations:^{
                            cellView.frame=CGRectMake(0, 0,  cellView.frame.size.width, cellView.frame.size.height);
                        }
                     completion:^(BOOL finished) {
                         //Completion Block
                     }];
}

-(void)showHiddenButtonsForView2:(UIView *)cellView
{
    [UIView animateWithDuration:0.5
                          delay:0.0
         usingSpringWithDamping:0.4
          initialSpringVelocity:0.5
                        options:0 animations:^{
                            cellView.frame=CGRectMake(72, 0,  cellView.frame.size.width, cellView.frame.size.height);
                        }
                     completion:^(BOOL finished) {
                         //[self hideButtonsForView:cellView];
                     }];
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
