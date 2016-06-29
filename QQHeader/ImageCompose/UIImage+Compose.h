//
//  UIImage+Compose.h
//  ImageCompose
//
//  Created by GG on 16/3/9.
//  Copyright © 2016年 GG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Compose)
+ (UIImage *)composeHeaderImageWithConstrainWH:(CGFloat)headerWH imagePathArray:(NSArray *)imagePathArray backgroundColor:(UIColor *)backgroundColor;
@end
