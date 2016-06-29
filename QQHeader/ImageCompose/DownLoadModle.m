//
//  DownLoadModle.m
//  QQHeader
//
//  Created by macmini2 on 16/6/29.
//  Copyright © 2016年 emiage. All rights reserved.
//

#import "DownLoadModle.h"
#import "UIImage+Compose.h"

@implementation DownLoadModle

-(id)copyWithZone:(NSZone*)zone{
    
    DownLoadModle  * modle = [[[self class] allocWithZone:zone] init];
    modle.userIDs = [[NSMutableArray alloc] initWithArray:self.userIDs copyItems:NO];
    return modle;
}

- (instancetype)init
{
    if (self = [super init]) {
        self.userIDs = [NSMutableArray array];
    }
    return self;
}

-(void)downLoadImagesfrom:(void (^)(UIImage * image))block{
    __weak DownLoadModle * weakself =self;
    __block NSMutableArray * imagesMu = [[NSMutableArray alloc]init];
    
    NSInteger count = MIN(5, _userIDs.count);
    //下载头像是异步的，所以要考虑多线程问题
    dispatch_group_t group = dispatch_group_create();
    for (NSInteger i=0; i<count; i++) {
        dispatch_group_enter(group);
        
        //更改成用自己项目的获取头像的方法
        UIImage * image =[UIImage imageNamed:_userIDs[i]];
        
        
        [imagesMu addObject:image];
        dispatch_group_leave(group);
        
    }
    
    dispatch_group_notify(group, dispatch_get_main_queue(), ^{
        //汇总 绘制合成头像
        //在主线程中更新UI代码
        weakself.headImage = [UIImage composeHeaderImageWithConstrainWH:60 imagePathArray:imagesMu backgroundColor:[UIColor purpleColor]];
        block(weakself.headImage);
    });
    
}




@end
