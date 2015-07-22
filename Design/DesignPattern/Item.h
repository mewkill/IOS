//
//  Item.h
//  DesignPattern
//
//  Created by JALOPEZ on 16/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject

@property(nonatomic,copy) NSString *value1;
@property(nonatomic,copy) NSString *value2;

-(id) initWithValue : (NSString *)value;

@end
