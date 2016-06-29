//
//  ViewController.m
//  QQHeader
//
//  Created by macmini2 on 16/6/27.
//  Copyright © 2016年 emiage. All rights reserved.
//

#import "ViewController.h"
#import "JJHeaders.h"
#import "UIImage+Compose.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end
static inline UIColor * pureColor(CGFloat value){
    return  [UIColor colorWithRed:arc4random_uniform(value)/255.0 green:arc4random_uniform(value)/255.0 blue:arc4random_uniform(value)/255.0 alpha:0.5];
}
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray * images = @[[UIImage imageNamed:@"5.jpg"],
                         [UIImage imageNamed:@"1.jpg"],
                         [UIImage imageNamed:@"2.jpg"],
                         [UIImage imageNamed:@"3.jpg"],
                         [UIImage imageNamed:@"4.jpg"]];
    
    //第一种方法

    UIImageView * imageview  = [JJHeaders createHeaderView:200
                                          images:images
                                         imageWH:100];
    [self.view addSubview:imageview];

    
    //第二种方法
    CGFloat wh = self.imageView.bounds.size.width;
    UIColor *color = pureColor(240);
    wh = self.imageView.bounds.size.width;
    color = pureColor(160);
    self.imageView.image = [UIImage composeHeaderImageWithConstrainWH:wh imagePathArray:images backgroundColor:color];
    

}
- (IBAction)button:(id)sender {

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
