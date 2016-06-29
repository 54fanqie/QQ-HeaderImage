//
//  TableViewCell.m
//  QQHeader
//
//  Created by macmini2 on 16/6/29.
//  Copyright © 2016年 emiage. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setDownLoadmodle:(DownLoadModle *)downLoadmodle{
    _downLoadmodle =downLoadmodle;
    
    __weak TableViewCell * weakself = self;
    self.textLab.text =[NSString stringWithFormat:@"%ld",[_downLoadmodle.userIDs count]];
    
    if (_downLoadmodle.headImage) {
        self.cellHeaderImage.image = _downLoadmodle.headImage;
    }else{
        self.cellHeaderImage.image = nil;
        [_downLoadmodle downLoadImagesfrom:^(UIImage * image) {
            weakself.cellHeaderImage.image = image;
        }];
    }

}
@end
