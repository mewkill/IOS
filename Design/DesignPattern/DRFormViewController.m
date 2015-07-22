//
//  DRFormViewController.m
//  DesignPattern
//
//  Created by JALOPEZ on 16/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import "DRFormViewController.h"
#import "Item.h"

@interface DRFormViewController ()

@end

@implementation DRFormViewController



-(id)init{
    self = [super initWithNibName:@"DRFormView" bundle:nil];
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)botonPresionado:(id)sender {
    NSString *value = [NSString stringWithFormat:@"Valor %@", [NSDate date]];
    Item *item= [[Item alloc]initWithValue:value];
    
    if(self.delegate){
        [self.delegate formController: self didAddItem: item];
        //SI UN METODO ES OPCIONAL EN EL PROTOCOL
        if ([self.delegate respondsToSelector:@selector(formControllerDidClose:)]){
            [self.delegate formControllerDidClose: self];
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
