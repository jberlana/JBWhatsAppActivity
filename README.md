# JBWhatsAppActivity

JBWhatsAppActivity is a UIActivity subclass that provides an “Share in WhatsApp" action to a UIActivityViewController.

## Installation
* Drag JBWhatsAppActivity.h .m and whatsapp.png files into your project.

## Features
* If a message and an ABID is provided, JBWhatsAppActivity sends a direct message to a contact.
* If just a message is defined, JBWhatsAppActivity opens WhatsApp contact picker to select a receiver.
* If no message and ABID is provided, then JBWhatsAppActivity just open WhatsApp.

## Usage
(see example Xcode project in /DemoProject)

### Create a WhatsAppMessage Object
	WhatsAppMessage *whatsappMsg = [[WhatsAppMessage alloc] initWithMessage:_messageTextField.text forABID:_abidTextField.text];
    activityItems = @[_messageTextField.text, whatsappMsg];

### Add it to your UIActivityViewController:
	NSArray *applicationActivities = @[[[JBWhatsAppActivity alloc] init]];
    NSArray *activityItems = @[_messageTextField.text, whatsappMsg];
    UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:applicationActivities];
    [self presentViewController:activityViewController animated:YES completion:^{}];

## Demo

![image](https://github.com/jberlana/JBWhatsAppActivity/raw/master/Screenshot.png)

## Credit
Javier Berlana, [Sweetbits](http://www.sweetbits.es/)
