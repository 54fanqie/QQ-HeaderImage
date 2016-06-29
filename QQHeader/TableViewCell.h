//
//  TableViewCell.h
//  QQHeader
//
//  Created by macmini2 on 16/6/29.
//  Copyright © 2016年 emiage. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DownLoadModle.h"

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *textLab;
@property (weak, nonatomic) IBOutlet UIImageView * cellHeaderImage;
@property (nonatomic,strong) DownLoadModle * downLoadmodle;

@end
