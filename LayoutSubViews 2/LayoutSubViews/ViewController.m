//
//  ViewController.m
//  LayoutSubViews
//
//  Created by 蒲悦蓉 on 2019/9/26.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "ViewController.h"
#import "PYRUIView.h"
#import "PYRScrollView.h"
#import "Masonry.h"
@interface ViewController ()
@property UIButton *testBtn;
@property PYRUIView *pyrView;
@property PYRScrollView *scrollView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /*测试view为0时是否会调用layoutSubView*/
//    _pyrView = [[PYRUIView alloc] initWithFrame:CGRectMake(0, 0, 0, 0)];
    
    _pyrView = [[PYRUIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.view addSubview:_pyrView];
    /*只调用一次， viewdidload完之后才会布局*/
//    _pyrView.frame = CGRectMake(100, 100, 375, 667);
    
    _scrollView = [[PYRScrollView alloc] init];
    _scrollView.frame = CGRectMake(10, 100, 355, 250);
    _scrollView.contentSize = CGSizeMake(375 * 2, 270);
    _scrollView.backgroundColor = [UIColor colorWithRed:0.98f green:0.95f blue:0.92f alpha:1.00f];
    UIImageView *addToScrollView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 230, 230)];
    addToScrollView.image = [UIImage imageNamed:@"roy1.JPG"];
    [_scrollView addSubview:addToScrollView];
    UIImageView *addToScrollView2 = [[UIImageView alloc] initWithFrame:CGRectMake(400, 10, 230, 230)];
    addToScrollView2.image = [UIImage imageNamed:@"roy1.JPG"];
    [_scrollView addSubview:addToScrollView2];
    [_pyrView addSubview:_scrollView];
    [_scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.equalTo(self.view);
        make.height.equalTo(@250);
    }];
    
    _testBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_testBtn setTitle:@"点击变view尺寸" forState:UIControlStateNormal];
    [_testBtn addTarget:self action:@selector(pressClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [_testBtn setFrame:CGRectMake(130, 600, 115, 40)];
    _testBtn.layer.borderColor = [UIColor blackColor].CGColor;
    _testBtn.layer.borderWidth = 1;
    _testBtn.layer.cornerRadius = 10;
    [self.view addSubview:_testBtn];
}
- (void)pressClick:(UIButton*)btn {
    _pyrView.frame = CGRectMake(0, 100, 375, 567);
}
@end
