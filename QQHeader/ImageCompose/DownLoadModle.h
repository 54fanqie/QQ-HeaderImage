//
//  DownLoadModle.h
//  QQHeader
//
//  Created by macmini2 on 16/6/29.
//  Copyright © 2016年 emiage. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface DownLoadModle : NSObject


/*  讨论组的userIDs
 *  在请求时大于五个，只取前五个user合成头像。
 *  根据用户的 userid 去获取头像
 *  在合成图片后 给headImage赋值这样不用每次去合成
 */
@property (nonatomic,strong) NSMutableArray *userIDs;
@property (nonatomic,strong) UIImage * headImage;
-(void)downLoadImagesfrom:(void (^)(UIImage * image))block;
@end
