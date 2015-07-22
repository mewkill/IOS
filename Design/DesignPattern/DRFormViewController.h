//
//  DRFormViewController.h
//  DesignPattern
//
//  Created by JALOPEZ on 16/07/15.
//  Copyright (c) 2015 JALOPEZ. All rights reserved.
//

#import <UIKit/UIKit.h>


@class DRFormViewController;
@class Item;

@protocol FormViewControllerDelegate <NSObject>

//-(void)formControllerDidClose:(DRFormViewController *) controller;
-(void)formController:(DRFormViewController *)controller didAddItem:(Item *) item;

@optional
-(void) formControllerDidClose:(DRFormViewController *)controller;

@end

@interface DRFormViewController : UIViewController

@property (nonatomic,assign) id <FormViewControllerDelegate> delegate;

@end
