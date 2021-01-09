//
//  NSDictionary+Extension.m
//  LittleBei
//
//  Created by 田洋 on 2018/12/3.
//  Copyright © 2018 田洋. All rights reserved.
//

#import "NSDictionary+Extension.h"

@implementation NSDictionary (Extension)
- (NSString *)createHttpTest
{
	NSMutableString *codes = [NSMutableString string];
	[codes appendString:@"?"];
	// 遍历字典
	[self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull value, BOOL * _Nonnull stop) {
		
		[codes appendFormat:@"%@=%@&",key, value];
	}];
	NSString *str = [NSString stringWithString:codes];
	str = [str substringToIndex:str.length -1];
	return str;
}
@end
