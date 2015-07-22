//
//  Item.m
//  DesignPattern
//
//  Created by JALOPEZ on 16/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import "Item.h"

@implementation Item

-(id) initWithValue : (NSString *)value{
    self = [super init];
    if(self){
        self.value1 = value;
    }
    return self;
    
}

@end
