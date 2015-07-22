//
//  AppDelegate.h
//  PruebaUno
//
//  Created by JALOPEZ on 20/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

-(void) agregarProductosConDescripcion:(NSString *)descripcion conPrecioCompra:(float) precioC conPrecioV:(float) precioV;


@property (nonatomic, strong) NSMutableArray *productosObtenidos;

-(NSMutableArray *)getProductos;

@end
