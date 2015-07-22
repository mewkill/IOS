//
//  FormView.m
//  PruebaUno
//
//  Created by JALOPEZ on 20/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import "FormView.h"
#import "AppDelegate.h"
//#import "Products.h"


@interface FormView ()

@end

@implementation FormView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation


- (IBAction)Guardar:(UIButton *)sender {
    
    
    
    NSString *descripcion = self.campoDescripcion.text;
    float precioC = [self.campoPrecioCompra.text floatValue];
    float precioV = [self.campoPrecioVenta.text floatValue];
    
    AppDelegate *appDelegate =(AppDelegate *) [UIApplication sharedApplication].delegate;
    [appDelegate agregarProductosConDescripcion:descripcion conPrecioCompra:precioC conPrecioV:precioV];
    
    [self.navigationController popToRootViewControllerAnimated:YES];
    
    /*Products *producto = [[Products alloc] initWithValue:descripcion Value2:precioC Value3:precioV];
    
    NSData *dataProd= [NSKeyedArchiver archivedDataWithRootObject:producto];
    NSUserDefaults *userDef = [NSUserDefaults standardUserDefaults];
    NSArray *array = [userDef objectForKey:@"productos"];
    NSMutableArray *arraym = nil;
    if (!array) {
        arraym = [[NSMutableArray alloc] initWithObjects:dataProd, nil];
    }else {
        arraym = [[NSMutableArray  alloc] initWithArray:array];
        [arraym addObject:dataProd];
    }
    [userDef setObject:arraym  forKey:@"productos"];
    [userDef synchronize];
    [self.navigationController popViewControllerAnimated:YES];*/
    
    
    
    //[self.navigationController popToRootViewControllerAnimated:YES];
}
@end
