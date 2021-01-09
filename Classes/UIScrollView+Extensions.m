//
//  UIScrollView+Extensions.m
//  DrBei-Mall
//
//  Created by 田洋 on 2018/12/12.
//  Copyright © 2018 田洋. All rights reserved.
//

#import "UIScrollView+Extensions.h"

@implementation UIScrollView (Extensions)


- (void)neverAdjustmentContentInset
{
	
#ifdef __IPHONE_11_0
	if (@available(iOS 11.0, *) ) {
		self.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
	}
/*
	 if (iOSVersion < 11) {
	 // 不允许自动修改UIScrollView的内边距
		 viewController.automaticallyAdjustsScrollViewInsets = NO;
	 }
*/

#endif
}
@end
