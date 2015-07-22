//
//  CatalogoView.m
//  PruebaUno
//
//  Created by JALOPEZ on 21/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import "CatalogoView.h"
#import "AppDelegate.h"
#import "Producto.h"
#import "DetallesView.h"

@interface CatalogoView ()

@end

@implementation CatalogoView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    
    self.productos = [NSMutableArray array];
    self.productos = [appDelegate getProductos];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.productos count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"reuseIdentifier"];
    }
    
    Producto *producto = [self.productos objectAtIndex:indexPath.row];
    cell.textLabel.text = producto.descripcion;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:@"enlace" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"enlace"]) {
        NSIndexPath *indexPath = [self.tablaProductos indexPathForSelectedRow];
        Producto *producto = [self.productos objectAtIndex:indexPath.row];
        DetallesView *next = [segue destinationViewController];
        next.objetoDetalle = producto;
    }
}


@end
