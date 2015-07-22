//
//  Producto.m
//  Practica1
//
//  Created by Artemio on 20/07/15.
//  Copyright (c) 2015 Artemio. All rights reserved.
//

#import "Producto.h"

@implementation Producto{
    int _iva;
}

-(id)initWithDescripcion:(NSString *)descripcion whitPrecioVenta:(float)precioVenta withPrecioCompra:(float)precioCompra{
    if (self = [super init]) {
        _descripcion = descripcion;
        _precioCompra = precioCompra;
        _precioVenta = precioVenta;
    }
    return self;
}

-(id)copyWithZone:(NSZone *)zone{
    Producto *prodCopy = [Producto allocWithZone:zone];
    prodCopy.descripcion = _descripcion;
    prodCopy.precioCompra = _precioCompra;
    prodCopy.precioVenta = _precioVenta;
    return prodCopy;
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:_descripcion forKey:@"descripcion"];
    [aCoder encodeFloat:_precioCompra forKey:@"precioC"];
    [aCoder encodeFloat:_precioVenta forKey:@"precioV"];
    
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    
    self.descripcion = [aDecoder decodeObjectForKey:@"descripcion"];
    self.precioVenta = [aDecoder decodeFloatForKey:@"precioV"];
    self.precioCompra = [aDecoder decodeFloatForKey:@"precioC"];
    
    return self;
}

@end
