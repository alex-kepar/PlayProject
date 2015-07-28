//
//  UILabelMagic.m
//  PlayProject
//
//  Created by Oleksandr Kiporenko on 7/28/15.
//  Copyright (c) 2015 Oleksandr Kiporenko. All rights reserved.
//

#import "UILabelMagic.h"

@implementation UILabelMagic

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)setText:(NSString *)text
{
    //CGRect newRect = self.bounds;
    //newRect.size = CGRectInfinite;
    self.bounds = CGRectInfinite;
    [super setText:text];
}


-(void)setBounds:(CGRect)bounds
{
    if (CGRectIsInfinite(bounds)) {
        return;
    }
    [super setBounds:bounds];
    NSLog(@"Width=%f; Height=%f", bounds.size.width, bounds.size.height);
}
@end
