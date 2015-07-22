//
//  UserRegisterView.m
//  Proyecto_Biblioteca
//
//  Created by JALOPEZ on 20/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import "UserRegisterView.h"

@interface UserRegisterView ()

@end

@implementation UserRegisterView

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

- (IBAction)btnRegistrarUsuario:(UIButton *)sender {
    if ([_txtNombre.text isEqualToString:@""]||[_txtApellidos.text isEqualToString:@""]||[_txtUsuario.text isEqualToString:@""]||[_txtPassword.text isEqualToString:@""]||[_txtConfirmaPassword.text isEqualToString:@""]||[_txtCorreo.text isEqualToString:@""]||[_txtTelefono.text isEqualToString:@""])
    {
        
        UIAlertView *camposVacios=[[UIAlertView alloc]initWithTitle:@"Error" message:@"Debes completar la informacion" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [camposVacios show];
        
    }
    else{
        if ([_txtPassword.text isEqualToString:_txtConfirmaPassword.text]) {
        
            NSLog(@"Conciden");
        }
        else{
            UIAlertView *errorPassword=[[UIAlertView alloc]initWithTitle:@"Error" message:@"Las contraseñas deben coincidir" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
            [errorPassword show];
        }
    }
    
}
@end
