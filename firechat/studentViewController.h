//
//  studentViewController.h
//  firechat
//
//  Created by davidchen on 13/9/10.
//  Copyright (c) 2013年 davidchen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"

@interface studentViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *regnoTextField;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *departmentTextField;
@property (weak, nonatomic) IBOutlet UITextField *yearTextField;
@property (weak, nonatomic) IBOutlet UITextField *findByRegisterNumberTextField;
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollView;
- (IBAction)saveData:(id)sender;
- (IBAction)findData:(id)sender;
@end
