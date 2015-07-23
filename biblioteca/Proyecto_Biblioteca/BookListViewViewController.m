//
//  BookListViewViewController.m
//  Proyecto_Biblioteca
//
//  Created by JALOPEZ on 20/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import "BookListViewViewController.h"

@interface BookListViewViewController ()

@property (strong, nonatomic) NSMutableArray *discos;

@property (strong, nonatomic) NSMutableArray *dHistorial;

//@property (strong, nonatomic) Utils *utils;

@end

@implementation BookListViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //BOTON REGISTRO DE LIBRO
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(showForm:)];
    self.navigationItem.rightBarButtonItem = item;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}





@end
