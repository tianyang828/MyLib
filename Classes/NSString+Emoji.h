//
//  NSString+Emoji.h
//  LittleBei
//
//  Created by 田洋 on 2018/12/3.
//  Copyright © 2018 田洋. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Emoji)


- (BOOL)containsEmoji;

- (BOOL)isIncludingEmoji __attribute__((deprecated));

- (instancetype)stringByRemovingEmoji;

@end

NS_ASSUME_NONNULL_END
