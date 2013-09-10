//
//  firechatViewController.h
//  firechat
//
//  Created by davidchen on 13/9/9.
//  Copyright (c) 2013年 davidchen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface firechatViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *accountField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
- (IBAction)signinAction:(id)sender;

@end
