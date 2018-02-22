//
//  UIColor+ColorHelper.h
//  LGPViewHelper
//
//  Created by LG on 2018/2/7.
//

#import <UIKit/UIKit.h>

@interface UIColor (ColorHelper)

/**
 根据16进制字符生成颜色对象

 @param hexString 16进制对象(可以带OX或者带#或者直接是颜色的16进制)
 @return 颜色
 */
+ (UIColor*)colorWithHexCode:(NSString*)hexString;

@end
