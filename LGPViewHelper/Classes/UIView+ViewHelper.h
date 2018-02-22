//
//  UIView+ViewHelper.h
//  LGPViewHelper
//
//  Created by LG on 2018/2/7.
//

#import <UIKit/UIKit.h>

@interface UIView (ViewHelper)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat midX;
@property (nonatomic, assign) CGFloat midY;
@property (nonatomic, assign) CGFloat maxX;
@property (nonatomic, assign) CGFloat maxY;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign,readonly) CGFloat widthHalf;
@property (nonatomic, assign,readonly) CGFloat heightHalf;


@end

static inline CGSize DeviceScreenSize(void)
{
    return [UIScreen mainScreen].bounds.size;
}

static inline CGFloat DeviceScreenWidth(void)
{
    return DeviceScreenSize().width;
}

static inline CGFloat DeviceScreenHeight(void)
{
    return DeviceScreenSize().height;
}


