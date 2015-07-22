//
//  ViewController.m
//  DesignPattern
//
//  Created by JALOPEZ on 16/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import "ViewController.h"
#import "DRFormViewController.h"
#import "Item.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(showForm:)];
    self.navigationItem.leftBarButtonItem = item;
}

-(void)showForm: (id) sender{
    DRFormViewController *formViewController = [[DRFormViewController alloc]init];
    
    formViewController.delegate = self;
//    Item *item = [[Item alloc]init];
//    formViewController.delegate = item;
    
    
    //[self presentViewController:formViewController animated:YES completion:NULL];
    [self.navigationController pushViewController:formViewController animated:YES];
    
}

-(void)formController:(DRFormViewController *)controller didAddItem:(Item *)item{
    NSLog(@"Item %@", item.value1);
    
    //[controller dismissViewControllerAnimated:YES completion:NULL];
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
