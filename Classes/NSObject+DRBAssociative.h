//
//  NSObject+DRBAssociative.h
//  LittleBei
//
//  Created by 田洋 on 2018/12/3.
//  Copyright © 2018 田洋. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface NSObject (DRBAssociative)

- (id)associativeObjectForKey:(NSString *)key;
- (void)removeAssociatedObjectForKey:(NSString *)key;
- (void)setAssociativeObject:(id)object forKey:(NSString *)key;

@end


