//
//  DetallesView.h
//  PruebaUno
//
//  Created by JALOPEZ on 21/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Producto.h"

@interface DetallesView : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *campoDescripcion;

@property (weak, nonatomic) IBOutlet UILabel *campoPrecioC;

@property (weak, nonatomic) IBOutlet UILabel *campoPrecioV;

@property (nonatomic,strong) Producto *objetoDetalle;

@end
