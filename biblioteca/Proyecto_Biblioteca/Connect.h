//
//  Connect.h
//  Proyecto_Biblioteca
//
//  Created by MAC COMPARTIDA4 on 22/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Connect : NSObject

//-(void)login:(NSString *)user password:(NSString *)pass con:(UIViewController *)con;

-(void) login:(NSString *)user password:(NSString *)pass conecta:(UIViewController *)con;

-(void)GetListOfBook;

@end
