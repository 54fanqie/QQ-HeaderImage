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
@property(nonatomic,strong) UIImage * image;
-(void)downLoadImagesfrom:(void(^)(UIImage * image))block;
@end
