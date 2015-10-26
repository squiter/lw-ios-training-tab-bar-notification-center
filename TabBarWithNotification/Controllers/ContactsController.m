//
//  ContactsController.m
//  TabBarWithNotification
//
//  Created by Treinamento Mobile on 10/26/15.
//  Copyright © 2015 Treinamento Mobile. All rights reserved.
//

#import "ContactsController.h"

@interface ContactsController ()

@property (nonatomic, weak) IBOutlet UITextField *textField;
@property (nonatomic, weak) IBOutlet UILabel *label;

@end

@implementation ContactsController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.label.text = nil;
    self.label.numberOfLines = 0;
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(handleNotification:)
                                                 name:@"set_labels"
                                               object:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendNotification:(id)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"set_labels"
                                                        object:self.textField.text
                                                      userInfo:@{@"class_name": NSStringFromClass([self class])}];
}

- (void)handleNotification:(NSNotification *) notification {
    NSString *text = notification.object;
    self.label.text = text;
    self.label.text = [self.label.text stringByAppendingString:@" enviado por: "];
    self.label.text = [self.label.text stringByAppendingString:[notification.userInfo objectForKey:@"class_name"]];
}

@end
