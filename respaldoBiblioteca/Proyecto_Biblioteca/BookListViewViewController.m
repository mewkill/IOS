//
//  BookListViewViewController.m
//  Proyecto_Biblioteca
//
//  Created by JALOPEZ on 20/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import "BookListViewViewController.h"
#import "Connect.h"

@interface BookListViewViewController ()

@end

@implementation BookListViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Connect *conexion = [[Connect alloc]init];
    [conexion GetListOfBook];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
