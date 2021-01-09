//
//  NSObject+DRBAssociative.m
//  LittleBei
//
//  Created by 田洋 on 2018/12/3.
//  Copyright © 2018 田洋. All rights reserved.
//

#import "NSObject+DRBAssociative.h"
#import <objc/runtime.h>
@implementation NSObject (DRBAssociative)

static char associativeObjectsKey;

- (id)associativeObjectForKey:(NSString *)key
{
	NSMutableDictionary *dict = objc_getAssociatedObject(self, &associativeObjectsKey);
	
	return [dict objectForKey:key];
}

- (void)removeAssociatedObjectForKey:(NSString *)key
{
	NSMutableDictionary *dict = objc_getAssociatedObject(self, &associativeObjectsKey);
	
	[dict removeObjectForKey:key];
}

- (void)setAssociativeObject:(id)object forKey:(NSString *)key
{
	NSMutableDictionary *dict = objc_getAssociatedObject(self, &associativeObjectsKey);
	
	if (!dict) {
		dict = [NSMutableDictionary dictionary];
		objc_setAssociatedObject(self, &associativeObjectsKey, dict, OBJC_ASSOCIATION_RETAIN);
	}
	
	if (object == nil) {
		[dict removeObjectForKey:key];
	} else {
		[dict setObject:object forKey:key];
	}
}
@end
