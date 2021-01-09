//
//  UIView+DRBExtension.m
//  LittleBei
//
//  Created by 田洋 on 2018/12/3.
//  Copyright © 2018 田洋. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

#pragma mark - --- setter ---

- (void)setSize:(CGSize)size
{
	CGRect frame = self.frame;
	frame.size = size;
	self.frame = frame;
}

- (CGSize)size
{
	return self.frame.size;
}

- (void)setWidth:(CGFloat)width
{
	CGRect frame = self.frame;
	frame.size.width = width;
	self.frame = frame;
}

- (void)setHeight:(CGFloat)height
{
	CGRect frame = self.frame;
	frame.size.height = height;
	self.frame = frame;
}

- (void)setX:(CGFloat)x
{
	CGRect frame = self.frame;
	frame.origin.x = x;
	self.frame = frame;
}

- (void)setY:(CGFloat)y
{
	CGRect frame = self.frame;
	frame.origin.y = y;
	self.frame = frame;
}

- (void)setTop:(CGFloat)y {
	CGRect frame = self.frame;
	frame.origin.y = y;
	self.frame = frame;
}

- (void)setCenterX:(CGFloat)centerX
{
	CGPoint center = self.center;
	center.x = centerX;
	self.center = center;
}

- (void)setCenterY:(CGFloat)centerY
{
	CGPoint center = self.center;
	center.y = centerY;
	self.center = center;
}

#pragma mark ---- getter ---

- (CGFloat)centerY
{
	return self.center.y;
}

- (CGFloat)bottom {
	
	return self.frame.origin.y + self.frame.size.height;
}
- (CGFloat)right {
	
	return self.frame.origin.x + self.frame.size.width;
}
- (CGFloat)centerX
{
	return self.center.x;
}

- (CGFloat)width
{
	return self.frame.size.width;
}

- (CGFloat)height
{
	return self.frame.size.height;
}

- (CGFloat)x
{
	return self.frame.origin.x;
}

- (CGFloat)y
{
	return self.frame.origin.y;
}

-(CGFloat)top
{
	return self.frame.origin.y;
}

- (CGFloat)maxX
{
	return self.x + self.width;
}

- (CGFloat)maxY
{
	return self.y + self.height;
}

-(CGFloat)ttx{
	return self.transform.tx;
}
-(void)setTtx:(CGFloat)ttx{
	CGAffineTransform  transform=self.transform;
	transform.tx=ttx;
	self.transform=transform;
}

-(CGFloat)tty{
	return self.transform.ty;
}
-(void)setTty:(CGFloat)tty{
	CGAffineTransform  transform=self.transform;
	transform.ty=tty;
	self.transform=transform;
}

- (void)autoLayout
{
	[self sizeToFit];
	[self layoutIfNeeded];
}

- (void)setToRound
{
	[self setCorner:self.width * 0.5];
}

- (void)setCorner:(CGFloat)cornerRadius
{
	self.layer.cornerRadius = cornerRadius;
	self.layer.masksToBounds = YES;
}
/** 部分圆角 */
- (void)setCorner:(CGFloat)cornerRadius direction:(UIRectCorner)direction{
	
	CGRect rect = self.bounds;
	CGSize radio = CGSizeMake(cornerRadius, cornerRadius);
	//    UIRectCorner corner = UIRectCornerTopLeft|UIRectCornerTopRight;//圆角位置
	UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:direction cornerRadii:radio];
	CAShapeLayer *masklayer = [[CAShapeLayer alloc] init];
	masklayer.frame = self.bounds;
	masklayer.path = path.CGPath;//设置路径
	self.layer.mask = masklayer;
}

- (void)addTapGestureRecognizerWithTarget:(id)target action:(SEL)action
{
	self.userInteractionEnabled = YES;
	[self addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:target action:action]];
}

#pragma mark - view to image
- (UIImage *)createImageBySelf
{
	return [self createImageByRect:self.bounds];
}

- (UIImage *)createImageByRect:(CGRect)frame
{
	UIGraphicsBeginImageContextWithOptions(frame.size, NO, [UIScreen mainScreen].scale);
	[self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES];
	UIImage * snapshotImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	return snapshotImage;
}


@end
