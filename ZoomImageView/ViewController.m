//
//  ViewController.m
//  ZoomImageView
//
//  Created by xh on 17/2/16.
//  Copyright © 2017年 xunti. All rights reserved.
//

#import "ZoomImageView.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    NSArray *grArrays=@[@0,@1,@2];
    NSArray *titelsArray=@[@"单击触发",@"双击触发",@"长按触发"];
    
    __block float tempMaxY=60;
    
    [grArrays enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        UIImageView *headerImageView = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.frame.size.width-80)/2, tempMaxY, 80, 80)];
        
        headerImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"userImage%ld",idx+1]];
        
        [self.view addSubview:headerImageView];
        
        tempMaxY=CGRectGetMaxY(headerImageView.frame)+70;

        KGestureRecognizerType gRType=[grArrays[idx] intValue];
        
        [[ZoomImageView getZoomImageView]showZoomImageView:headerImageView addGRType:gRType];
        
        
        
        UILabel *markLable = [[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMinX(headerImageView.frame),CGRectGetMaxY(headerImageView.frame)+5, CGRectGetWidth(headerImageView.frame),20)];
        markLable.text = titelsArray[idx];

        markLable.font = [UIFont systemFontOfSize:14];
        markLable.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:markLable];
        
    }];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
