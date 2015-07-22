//
//  Products.h
//  PruebaUno
//
//  Created by JALOPEZ on 20/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Products : NSObject<NSCopying,NSCoding>

@property(nonatomic,copy) NSString *value1;
@property(nonatomic) float value2;
@property(nonatomic) float value3;

-(id) initWithValue : (NSString *)value1 Value2: (float) value2 Value3: (float) value3;





/*
 @interface Producto : NSObject<NSCopying,NSCoding>
 
 @property(nonatomic,strong) NSString *descripcion;
 @property(nonatomic) float precioCompra;
 @property(nonatomic) float precioVenta;
 
 -(id)initWithDescripcion:(NSString*)descripcion whitPrecioVenta:(float)precioVenta withPrecioCompra:(float)precioCompra;
 
 */

@end
