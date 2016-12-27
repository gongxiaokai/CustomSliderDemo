//
//  ViewController.m
//  CustomSliderDemo
//
//  Created by gongwenkai on 2016/12/27.
//  Copyright © 2016年 gongwenkai. All rights reserved.
//

#import "ViewController.h"
#import "CustomSlider.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CustomSlider *slider = [[CustomSlider alloc] initWithFrame:CGRectMake(0, 50, CGRectGetWidth(self.view.frame), 100)];
    slider.backgroundColor = [UIColor grayColor];
    slider.sliderBarHeight = 10;
    slider.numberOfPart = 4;
    slider.thumbImage = [UIImage imageNamed:@"4.png"];
    slider.partNameOffset = CGPointMake(0, -30);
    slider.thumbSize = CGSizeMake(23, 12);
    slider.partSize = CGSizeMake(24, 43);
    slider.partNameArray = @[@"发发呆",@"阿斯顿发斯蒂芬",@"斯芬",@"发导出"];
    [slider addTarget:self action:@selector(valuechange:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:slider];

}

- (void)valuechange:(CustomSlider*)sender {
    NSLog(@"current index = %ld",(long)sender.value);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
