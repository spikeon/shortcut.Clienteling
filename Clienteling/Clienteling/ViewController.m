//
//  ViewController.m
//  Clienteling
//
//  Created by Michael Flynn on 1/18/14.
//  Copyright (c) 2014 Michael Flynn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openClienteling:(id)sender {
    NSString *url = @"mflynn:8080/Clienteling/index";
    // Open with Google Chrome if possible
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL   URLWithString:@"googlechrome:"]]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"googlechrome://%@", url]]];
    } else {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"itms-apps://itunes.apple.com/us/app/chrome/id535886823"]];
    }
}

@end
