//
//  DetallesView.m
//  PruebaUno
//
//  Created by JALOPEZ on 21/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import "DetallesView.h"
#import "Producto.h"

@interface DetallesView ()

@end

@implementation DetallesView

- (void)viewDidLoad {
    [super viewDidLoad];
     Producto *product = self.objetoDetalle;
        self.campoDescripcion.text = product.descripcion;
        self.campoPrecioC.text = [product.precioCompra stringValue];
        self.campoPrecioV.text = [product.precioVenta stringValue];
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
