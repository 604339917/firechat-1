//
//  firechatViewController.m
//  firechat
//
//  Created by davidchen on 13/9/9.
//  Copyright (c) 2013年 davidchen. All rights reserved.
//

#import "firechatViewController.h"
#import "XMPPStream.h"

@interface firechatViewController ()

@end

@implementation firechatViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    XMPPStream *xmppStream = [[XMPPStream alloc] init];
    
    [xmppStream setHostName:@"jwchat.rakuya.com.tw"];
    [xmppStream setHostPort:5222];
    
    NSLog(@"%@", xmppStream.hostName);
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
