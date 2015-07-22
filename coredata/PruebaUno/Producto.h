//
//  Producto.h
//  PruebaUno
//
//  Created by JALOPEZ on 21/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Producto : NSManagedObject

@property (nonatomic, retain) NSString * descripcion;
@property (nonatomic, retain) NSNumber * precioCompra;
@property (nonatomic, retain) NSNumber * precioVenta;

@end
