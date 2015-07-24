//
//  BookRegisterView.m
//  Proyecto_Biblioteca
//
//  Created by JALOPEZ on 24/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import "BookRegisterView.h"
#import "Connect.h"

@interface BookRegisterView ()

@end

@implementation BookRegisterView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnRegisterBook:(id)sender {
    
    if ([self.campoTitulo.text isEqualToString:@""]||[self.campoEditorial.text isEqualToString:@""]||[self.campoClasificacion.text isEqualToString:@""]||[self.campoAutor.text isEqualToString:@""]||[self.campoPaginas.text isEqualToString:@""]||[self.campoExistencias.text isEqualToString:@""]||[self.campoDescripcion.text isEqualToString:@""]||[self.campoImagen.text isEqualToString:@""])
    {
        
        UIAlertView *camposVacios=[[UIAlertView alloc]initWithTitle:@"Error" message:@"Debes completar la informacion" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [camposVacios show];
        
    }
    else{
        
        Connect *conectarWebService = [[Connect alloc]init];
        

        [conectarWebService registraLibros:self.campoTitulo.text editorial:self.campoEditorial.text clasificacion:self.campoClasificacion.text autor:self.campoAutor.text paginas:self.campoPaginas.text existencias:self.campoExistencias.text descripcion:self.campoDescripcion.text imagen:self.campoImagen.text conecta:self];

            }

}
@end
