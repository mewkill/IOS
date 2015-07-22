//
//  ViewController.m
//  Proyecto_Biblioteca
//
//  Created by JALOPEZ on 20/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import "ViewController.h"
#import "UserRegisterView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnIniciar:(UIButton *)sender {
    if ([_txtUsuario.text isEqualToString:@""]|| [_txtPassword.text isEqualToString:@""]) {
        
        UIAlertView *camposVacios=[[UIAlertView alloc]initWithTitle:@"Error" message:@"Debes completar la informacion" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [camposVacios show];
    }
    
    
}


- (IBAction)btnRegitrar:(UIButton *)sender {
    
    UserRegisterView *userRegister=[[UserRegisterView alloc] init];
    [self.navigationController pushViewController:userRegister animated:YES];
}

@end
