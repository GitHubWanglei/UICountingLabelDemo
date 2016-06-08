//
//  ViewController.m
//  UICountingLabelDemo
//
//  Created by lihongfeng on 16/6/7.
//  Copyright © 2016年 wanglei. All rights reserved.
//

#import "ViewController.h"
#import "UICountingLabel.h"

@interface ViewController ()

@property (nonatomic, strong) UICountingLabel *myLabel;
@property (nonatomic, strong) UIButton *displayBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor colorWithRed:244/255.0 green:244/255.0 blue:244/255.0 alpha:1];
    [self.view addSubview:self.displayBtn];
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 280, 30)];
    titleLabel.textColor = [UIColor colorWithRed:156/255.0 green:156/255.0 blue:156/255.0 alpha:1];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.text = @"总金额(元)";
    titleLabel.font = [UIFont fontWithName:@"Oriya Sangam MN" size:13];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:titleLabel];
    
    UICountingLabel *myLabel = [[UICountingLabel alloc] initWithFrame:CGRectMake(20, CGRectGetMaxY(titleLabel.frame)+1, 280, 45)];
    myLabel.textAlignment = NSTextAlignmentCenter;
    myLabel.font = [UIFont systemFontOfSize:40];
    myLabel.font = [UIFont fontWithName:@"Avenir Next" size:48];
    myLabel.textColor = [UIColor colorWithRed:236/255.0 green:66/255.0 blue:43/255.0 alpha:1];
    [self.view addSubview:myLabel];
    myLabel.format = @"%.2f";
    myLabel.positiveFormat = @"###,##0.00";
    
//    myLabel.format = @"%.2f";
//    myLabel.format = @"%d";
    
    self.myLabel = myLabel;
    
}

- (UIButton *)displayBtn{
    if (_displayBtn == nil) {
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(80, self.view.bounds.size.height - 100, 100, 50)];
        [btn addTarget:self action:@selector(animation) forControlEvents:UIControlEventTouchUpInside];
        [btn setTitle:@"play" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [self.view addSubview:btn];
        _displayBtn = btn;
    }
    return _displayBtn;
}

-(void)animation{
    [self.myLabel countFrom:0.00
                    to:3048.64
          withDuration:1.0f];
    
//    [self.myLabel countFrom:0
//                         to:100
//               withDuration:1.0f];
    
//    [self.myLabel countFrom:0.00
//                         to:3198.23
//               withDuration:1.0f];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
