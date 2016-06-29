//
//  TableViewController.m
//  QQHeader
//
//  Created by macmini2 on 16/6/29.
//  Copyright © 2016年 emiage. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"
#import "DownLoadModle.h"

@interface TableViewController ()
@property (nonatomic,strong) NSMutableArray * models;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.models = [[NSMutableArray alloc]init];
    [self creatData];
    

    [self.tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"myCell"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return self.models.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    if (!cell) {
        [tableView registerNib:[UINib nibWithNibName:@"myCell" bundle:nil] forCellReuseIdentifier:@"myCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    }
    cell.downLoadmodle= self.models[indexPath.section];
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}


//创建假数据
-(void)creatData{
    DownLoadModle * dl =[[DownLoadModle alloc]init];
    [dl.userIDs addObjectsFromArray:@[@"5.jpg"]];
    [self.models addObject:dl];
    
    DownLoadModle * dl1 =[[DownLoadModle alloc]init];
    [dl1.userIDs addObjectsFromArray:@[@"1.jpg",@"5.jpg"]];
    [self.models addObject:dl1];
    
    
    DownLoadModle * dl2 =[[DownLoadModle alloc]init];
    [dl2.userIDs addObjectsFromArray:@[@"5.jpg",@"3.jpg",@"4.jpg"]];
    [self.models addObject:dl2];
    
    DownLoadModle * dl3 =[[DownLoadModle alloc]init];
    [dl3.userIDs addObjectsFromArray:@[@"5.jpg",@"2.jpg",@"3.jpg",@"4.jpg"]];
    [self.models addObject:dl3];
    
    DownLoadModle * dl4 =[[DownLoadModle alloc]init];
    [dl4.userIDs addObjectsFromArray:@[@"5.jpg",@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg"]];
    [self.models addObject:dl4];
    
    DownLoadModle * dl5 =[[DownLoadModle alloc]init];
    [dl5.userIDs addObjectsFromArray:@[@"5.jpg",@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg"]];
    [self.models addObject:dl5];
    
    DownLoadModle * dl6 =[[DownLoadModle alloc]init];
    [dl6.userIDs addObjectsFromArray:@[@"5.jpg",@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg"]];
    [self.models addObject:dl6];
    
    DownLoadModle * dl7 =[[DownLoadModle alloc]init];
    [dl7.userIDs addObjectsFromArray:@[@"5.jpg",@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg"]];
    [self.models addObject:dl7];
    
    DownLoadModle * dl10 =[[DownLoadModle alloc]init];
    [dl10.userIDs addObjectsFromArray:@[@"1.jpg",@"2.jpg"]];
    [self.models addObject:dl10];
    
    DownLoadModle * dl8 =[[DownLoadModle alloc]init];
    [dl8.userIDs addObjectsFromArray:@[@"5.jpg",@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg"]];
    [self.models addObject:dl8];
    
    DownLoadModle * dl9 =[[DownLoadModle alloc]init];
    [dl9.userIDs addObjectsFromArray:@[@"5.jpg",@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg"]];
    [self.models addObject:dl9];
    [self.tableView reloadData];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
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
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
