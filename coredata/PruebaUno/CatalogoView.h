//
//  CatalogoView.h
//  PruebaUno
//
//  Created by JALOPEZ on 21/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import "ViewController.h"

@interface CatalogoView : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tablaProductos;


@property (nonatomic, strong)NSMutableArray *productos;


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;


@end
