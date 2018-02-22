//
//  UIView+ViewHelper.m
//  LGPViewHelper
//
//  Created by LG on 2018/2/7.
//

#import "UIView+ViewHelper.h"

@implementation UIView (ViewHelper)

- (CGFloat)x
{
    return self.frame.origin.x;
}

- (CGFloat)y
{
    return self.frame.origin.y;
}

- (CGFloat)midX
{
    return CGRectGetMidX(self.frame);
}

- (CGFloat)midY
{
    return CGRectGetMidY(self.frame);
}

- (CGFloat)maxX
{
    return CGRectGetMaxX(self.frame);
}

- (CGFloat)maxY
{
    return CGRectGetMaxY(self.frame);
}

- (CGFloat)width
{
    return CGRectGetWidth(self.frame);
}

- (CGFloat)height
{
    return CGRectGetHeight(self.frame);
}

- (CGFloat)widthHalf
{
    return self.width / 2.;
}

- (CGFloat)heightHalf
{
    return self.height / 2.;
}

- (void)setX:(CGFloat)x
{
    CGRect oldFrame = self.frame;
    oldFrame.origin.x = x;
    self.frame = oldFrame;
}

- (void)setY:(CGFloat)y
{
    CGRect oldFrame = self.frame;
    oldFrame.origin.y = y;
    self.frame = oldFrame;
}

- (void)setMidX:(CGFloat)midX
{
    if (self.midX != midX) {
        CGRect oldFrame = self.frame;
        oldFrame.origin.x = midX - self.widthHalf;
        self.frame = oldFrame;
    }
}

- (void)setMidY:(CGFloat)midY
{
    if (self.midY != midY) {
        CGRect oldFrame = self.frame;
        oldFrame.origin.y = midY - self.heightHalf;
        self.frame = oldFrame;
    }
}

- (void)setMaxX:(CGFloat)maxX
{
    if (self.maxX != maxX) {
        CGRect oldFrame = self.frame;
        oldFrame.origin.x = maxX - self.width;
        self.frame = oldFrame;
    }
}

- (void)setMaxY:(CGFloat)maxY
{
    if (self.maxY != maxY) {
        CGRect oldFrame = self.frame;
        oldFrame.origin.y = maxY - self.height;
        self.frame = oldFrame;
    }
}

- (void)setWidth:(CGFloat)width
{
    if (self.width != width) {
        CGRect oldFrame = self.frame;
        oldFrame.size.width = width;
        self.frame = oldFrame;
    }
}

- (void)setHeight:(CGFloat)height
{
    if (self.height != height) {
        CGRect oldFrame = self.frame;
        oldFrame.size.height = height;
        self.frame = oldFrame;
    }
}


@end

