//
//  ViewController.m
//  SNSubspecTest
//
//  Created by Sunny on 26/6/18.
//  Copyright © 2018年 Sunny. All rights reserved.
//

#import "ViewController.h"
#import "MGJRouter.h"
#import "AppDelegate.h"
#import "MGJRouter+Nav.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [MGJRouter setupNavController:self.navigationController];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnDetialClick:(id)sender {
    
    [MGJRouter openURL:@"sn://detail"];
}

- (IBAction)btnOrderClick:(id)sender {
    
//    AppDelegate *app = (AppDelegate *)[UIApplication    sharedApplication].delegate;
//    app.navCtr = self.navigationController;
   
    [MGJRouter openURL:@"sn://order"];
}

@end
