//
//  PYRButtonInit.m
//  LayoutSubViews
//
//  Created by 蒲悦蓉 on 2019/9/26.
//  Copyright © 2019 蒲悦蓉. All rights reserved.
//

#import "PYRButtonInit.h"

@implementation PYRButtonInit

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    [self setFrame:CGRectMake(140, 400, 95, 40)];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
