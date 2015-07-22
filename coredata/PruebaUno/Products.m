//
//  Products.m
//  PruebaUno
//
//  Created by JALOPEZ on 20/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import "Products.h"

@implementation Products




-(id) initWithValue : (NSString *)value1 Value2: (float) value2 Value3: (float) value3 {
    self = [super init];
    if(self){
        self.value1 = value1;
        self.value2 = value2;
        self.value3 = value3;
    }
    return self;
    
}


//COPIAR VALORES
-(id)copyWithZone:(NSZone *)zone{
    Products *prodCopy = [Products allocWithZone:zone];
    prodCopy.value1 = self.value1;
    prodCopy.value2 = self.value2;
    prodCopy.value3 = self.value3;
    return prodCopy;
}


////ASIGNACION DE ETIQUETAS - LLAVES
-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.value1 forKey:@"descripcion"];
    [aCoder encodeFloat:self.value2 forKey:@"precioC"];
    [aCoder encodeFloat:self.value3 forKey:@"precioV"];
    
}



-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super init];
    
    self.value1 = [aDecoder decodeObjectForKey:@"descripcion"];
    self.value2 = [aDecoder decodeFloatForKey:@"precioC"];
    self.value3 = [aDecoder decodeFloatForKey:@"precioV"];
    
    return self;
}







/*-(id)initWithDescripcion:(NSString *)descripcion whitPrecioVenta:(float)precioVenta withPrecioCompra:(float)precioCompra{
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
}*/


@end
