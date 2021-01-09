//
//  UIScrollView+Extensions.h
//  DrBei-Mall
//
//  Created by 田洋 on 2018/12/12.
//  Copyright © 2018 田洋. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIScrollView (Extensions)

/** 为适配 iOS11 高度下移问题 */
- (void)neverAdjustmentContentInset;

@end


