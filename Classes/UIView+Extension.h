//
//  UIView+DRBExtension.h
//  LittleBei
//
//  Created by 田洋 on 2018/12/3.
//  Copyright © 2018 田洋. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface UIView (Extension)

@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
@property (nonatomic, readonly) CGFloat bottom;
@property (nonatomic, readonly) CGFloat right;
@property (nonatomic, assign, readonly) CGFloat maxX;
@property (nonatomic, assign, readonly) CGFloat maxY;

//添加手势用
@property(nonatomic,assign)CGFloat ttx;
@property(nonatomic,assign)CGFloat tty;


- (void)autoLayout;

/** 圆形 */
- (void)setToRound;
/** 自定义圆角 */
- (void)setCorner:(CGFloat)cornerRadius;
/** 部分圆角 */
- (void)setCorner:(CGFloat)cornerRadius direction:(UIRectCorner)direction;
/** 添加轻拍手势 */
- (void)addTapGestureRecognizerWithTarget:(id)target action:(SEL)action;

#pragma mark - view to image
- (UIImage *)createImageBySelf;

- (UIImage *)createImageByRect:(CGRect)frame;

@end


