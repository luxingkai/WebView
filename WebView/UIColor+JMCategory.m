//
//  UIColor+JMCategory.m
//  WebView
//
//  Created by tiger fly on 2020/4/17.
//  Copyright © 2020 tiger fly. All rights reserved.
//

#import "UIColor+JMCategory.h"

@implementation UIColor (JMCategory)

+ (id)colorWithRGB:(uint32_t)rgb {
    
    int r = (rgb & 0xff0000) >> 16;
    int g = (rgb & 0xff00) >> 8;
    int b = (rgb & 0xff);
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1];
}

@end
