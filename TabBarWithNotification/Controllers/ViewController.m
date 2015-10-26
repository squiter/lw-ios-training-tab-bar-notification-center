//
//  ViewController.m
//  TabBarWithNotification
//
//  Created by Treinamento Mobile on 10/26/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Gambiarra do Ruiz!
    [self.tabBarController.viewControllers makeObjectsPerformSelector:@selector(view)];
    
    self.title = @"Principal";
    
}

@end
