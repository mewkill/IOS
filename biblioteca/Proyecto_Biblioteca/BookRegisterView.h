//
//  BookRegisterView.h
//  Proyecto_Biblioteca
//
//  Created by JALOPEZ on 23/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BookRegisterView : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *campoTitulo;


@property (weak, nonatomic) IBOutlet UITextField *campoEditorial;


@property (weak, nonatomic) IBOutlet UITextField *campoClasificacion;


@property (weak, nonatomic) IBOutlet UITextField *campoAutor;

@property (weak, nonatomic) IBOutlet UITextField *campoPaginas;


@property (weak, nonatomic) IBOutlet UITextField *campoExistencias;


@property (weak, nonatomic) IBOutlet UITextField *campoDescripcion;


@property (weak, nonatomic) IBOutlet UITextField *campoImagen;




@end
