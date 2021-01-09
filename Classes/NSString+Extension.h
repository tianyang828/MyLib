//
//  NSString+Extension.h
//  LittleBei
//
//  Created by 田洋 on 2018/12/3.
//  Copyright © 2018 田洋. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Extension)

//获取字符串的字符长度
- (int)convertToByte;
//判断输入的是否为数字
- (BOOL)validateNumber;
#pragma mark -------------------检查
/** 是否是url */
- (BOOL)isUrl;

/** 正则表达式检测 */
- (BOOL)match:(NSString *)pattern;

/** 判断是不是手机号 */
- (BOOL)isPhoneNumber;

+ (BOOL)checkIdentityCardNo:(NSString*)cardNo;

/** 移除所有空格 */
- (NSString *)removeALLBlankSpace;

/** 移除两端空格 */
- (NSString *)removeBothSideBlankSpace;

/**
 移除部分特殊字符( @／：()；（）¥「」＂、[]{}#%-*+=_\\|~＜＞$€^•'@#$%^&*()_+'\")
 */
- (NSString *)removePartSpecialCharater;

/** 移除特殊字符（保留数字 字母 汉字）*/
- (NSString *)removeSpecialCharater;

/**
 全角转半角
 @return 转化后的文本
 */
- (NSString *)replaceSpecialWhitespace;

/**
 半角转全角
 @return 转化后的文本
 */
- (NSString *)replaceNormalWhiteSpace;


#pragma mark -------------------bounding 计算size宽高

//计算UILabel的高度(带有行间距的情况)
- (CGFloat)boundingLabelHeightWithFont:(UIFont*)font withWidth:(CGFloat)width withLineSpacing:(CGFloat)lineSpacing;

- (CGFloat)boundingWidthWithHeight:(CGFloat)height font:(UIFont *)font;
- (CGFloat)boundingWidthWithHeight:(CGFloat)height fontSize:(CGFloat)size;

//粗体
- (CGFloat)boundingWidthWithHeight:(CGFloat)height BoldFontSize:(CGFloat)size;

/** 根据宽度获取高度  */
- (CGFloat)boundingHeightWithWidth:(CGFloat)width fontSize:(CGFloat)size;




@end

NS_ASSUME_NONNULL_END
