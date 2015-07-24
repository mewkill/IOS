//
//  BookListViewViewController.m
//  Proyecto_Biblioteca
//
//  Created by JALOPEZ on 20/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import "BookListViewViewController.h"
#import "Connect.h"
#import "BookRegisterView.h"

@interface BookListViewViewController ()

@end

@implementation BookListViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    NSNumber *usuario=[[NSUserDefaults standardUserDefaults] valueForKey:@"admin"];
    
    if (usuario.intValue == 0) {
        //BOTON REGISTRAR LIBRO
        UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(showForm:)];
        
        self.navigationItem.rightBarButtonItem = item;

    }
    

    
    Connect *conexion = [[Connect alloc]init];
    [conexion GetListOfBook];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)showForm: (id) sender{
    BookRegisterView *formBookRegister = [[BookRegisterView alloc]init];
    
    //formBookRegister.delegate = self;
    
    [self.navigationController pushViewController:formBookRegister animated:YES];
    
}





@end
