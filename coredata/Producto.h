//
//  Producto.h
//  Practica1
//
//  Created by Artemio on 20/07/15.
//  Copyright (c) 2015 Artemio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Producto : NSObject<NSCopying,NSCoding>

@property(nonatomic,strong) NSString *descripcion;
@property(nonatomic) float precioCompra;
@property(nonatomic) float precioVenta;

-(id)initWithDescripcion:(NSString*)descripcion whitPrecioVenta:(float)precioVenta withPrecioCompra:(float)precioCompra;

@end
