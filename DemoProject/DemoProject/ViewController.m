//
//  ViewController.m
//  DemoProject
//
//  Created by Javier Berlana on 19/07/13.
//  Copyright (c) 2013 Javier Berlana. All rights reserved.
//

#import "ViewController.h"
#import "JBWhatsAppActivity.h"

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

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField
{
    [theTextField resignFirstResponder];
    return YES;
}

- (IBAction)actionTapped:(id)sender
{
    WhatsAppMessage *whatsappMsg = [[WhatsAppMessage alloc] initWithMessage:_messageTextField.text forABID:_abidTextField.text];
    
    NSArray *applicationActivities = @[[[JBWhatsAppActivity alloc] init]];
    NSArray *excludedActivities    = @[UIActivityTypePrint, UIActivityTypePostToWeibo, UIActivityTypeMessage];
    NSArray *activityItems         = @[_messageTextField.text, whatsappMsg];

    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:applicationActivities];
    activityViewController.excludedActivityTypes = excludedActivities;
    
    [self presentViewController:activityViewController animated:YES completion:^{}];
}
@end
