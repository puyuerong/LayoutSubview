//
//  PYRUIView.m
//  LayoutSubViews
//
//  Created by 蒲悦蓉 on 2019/9/26.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "PYRUIView.h"
//#import "PYRScrollView.h"
@implementation PYRUIView
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];

    _btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_btn setTitle:@"点击变尺寸" forState:UIControlStateNormal];
    [_btn addTarget:self action:@selector(pressClick:) forControlEvents:UIControlEventTouchUpInside];
    
    //    [_btn setFrame:CGRectMake(140, 600, 95, 40)];
    _btn.layer.borderColor = [UIColor blackColor].CGColor;
    _btn.layer.borderWidth = 1;
    _btn.layer.cornerRadius = 10;
    [self addSubview:_btn];

    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    [_btn setFrame:CGRectMake(140, 10, 95, 50)];
}
- (void)pressClick:(UIButton*)btn {
    [_btn setFrame:CGRectMake(150, 50, 75, 40)];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
