//
//  ViewController.m
//  Swifable Table View
//
//  Created by Mahaboobsab Nadaf on 17/10/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
@interface ViewController ()

@end

@implementation ViewController{

    NSMutableArray *patternImages;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    patternImages = [NSMutableArray arrayWithObjects:@"neon-autumn.gif", @"alchemy.jpg", @"white-wood.jpg", @"green-goblin.png", @"subway-lines.png", @"canvas-orange.jpg", @"kiwis.png", @"cuadros.png", @"hodgepodge.png", @"naranjas.png", @"bunting-flag.png", nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellid=@"cell";
    TableViewCell *cell=(TableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellid];;
    if(cell==nil)
    {
        cell=[[TableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellid];
    }
    cell.nameLabel.text=[NSString stringWithFormat:@"This is cell no %ld of this table",indexPath.row+1];
    cell.editButtonOutlet.tag=101+indexPath.row;
    cell.deleteButtonOutlet.tag=201+indexPath.row;
    cell.swipableUIView.tag=301+indexPath.row;
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    cell.myImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[patternImages objectAtIndex:indexPath.row]]];
    return cell;
}
- (IBAction)editButton:(UIButton *)sender {
    
    NSString *str=[NSString stringWithFormat:@"Edit Button is pressed on cell no %ld of this table.",sender.tag-100];
   
  
    
    
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:nil                                                                   message:str
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
    
    
}
- (IBAction)deleteButton:(UIButton *)sender {
    
    NSString *str=[NSString stringWithFormat:@"Delete Button is pressed on cell no %ld of this table.",sender.tag-200];
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:nil                                                                   message:str
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}
- (IBAction)moreButton:(UIButton *)sender {
    
    NSString *str=[NSString stringWithFormat:@"More Button Pressed : %ld",sender.tag-200];
    UIAlertController* alert = [UIAlertController alertControllerWithTitle:nil                                                                   message:str
                                                            preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                          handler:^(UIAlertAction * action) {}];
    
    [alert addAction:defaultAction];
    [self presentViewController:alert animated:YES completion:nil];
}


@end
