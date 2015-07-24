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
-(void)registraUsuarios:(NSString *)nombre usuario:(NSString *)user  password:(NSString*)pwd  telefono:(NSString *)tel email:(NSString *)email conecta:(UIViewController *)con;
-(void)registraLibros:(NSString *)titulo editorial:(NSString *)editorial  clasificacion:(NSString*)clasificacion  autor:(NSString *)autor paginas:(NSString *)paginas existencias:(NSString *)existencias descripcion:(NSString *)descripcion imagen:(NSString *)imagen conecta:(UIViewController *)con;

-(void)GetListOfBook;

@end
