//
//  studentViewController.m
//  firechat
//
//  Created by davidchen on 13/9/10.
//  Copyright (c) 2013年 davidchen. All rights reserved.
//

#import "studentViewController.h"

@interface studentViewController ()

@end

@implementation studentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)saveData:(id)sender{
    BOOL success = NO;
    NSString *alertString = @"Data Insertion failed";
    if (_regnoTextField.text.length>0 &&_nameTextField.text.length>0 && _departmentTextField.text.length>0 &&_yearTextField.text.length>0 ) {
        success = [[DBManager getSharedInstance]saveData:
                   _regnoTextField.text name:_nameTextField.text department:
                   _departmentTextField.text year:_yearTextField.text];
    } else {
        alertString = @"Enter all fields";
    }
    if (success == NO) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:alertString message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
}

-(IBAction)findData:(id)sender{
    NSArray *data = [[DBManager getSharedInstance]findByRegisterNumber:
                     _findByRegisterNumberTextField.text];
    if (data == nil) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:
                              @"Data not found" message:nil delegate:nil cancelButtonTitle:
                              @"OK" otherButtonTitles:nil];
        [alert show];
        _regnoTextField.text = @"";
        _nameTextField.text =@"";
        _departmentTextField.text = @"";
        _yearTextField.text =@"";
    }
    else{
        _regnoTextField.text = _findByRegisterNumberTextField.text;
        _nameTextField.text =[data objectAtIndex:0];
        _departmentTextField.text = [data objectAtIndex:1];
        _yearTextField.text =[data objectAtIndex:2];
    }
}

#pragma mark - Text field delegate
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    [_myScrollView setFrame:CGRectMake(10, 50, 300, 200)];
    [_myScrollView setContentSize:CGSizeMake(300, 350)];
}
-(void)textFieldDidEndEditing:(UITextField *)textField{
    [_myScrollView setFrame:CGRectMake(10, 50, 300, 350)];
    
}
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}
@end
