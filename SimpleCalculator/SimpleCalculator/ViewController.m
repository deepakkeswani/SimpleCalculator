//
//  ViewController.m
//  SimpleCalculator
//
//  Created by Deepak Keswani on 14/04/12.
//  Copyright (c) 2012 D-Kay Consultancy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction) clearDisplay {
    display.text = @"";
}

- (IBAction) button1 {
    display.text=[NSString stringWithFormat:@"%@1",display.text];
}
- (IBAction) button2 {
    display.text=[NSString stringWithFormat:@"%@2",display.text];
}
- (IBAction) button3 {
    display.text=[NSString stringWithFormat:@"%@3",display.text];
}

- (IBAction) button4 {
    display.text=[NSString stringWithFormat:@"%@4",display.text];
}

- (IBAction) button5 {
    display.text=[NSString stringWithFormat:@"%@5",display.text];
}

- (IBAction) button6 {
    display.text=[NSString stringWithFormat:@"%@6",display.text];
}

- (IBAction) button7 {
    display.text=[NSString stringWithFormat:@"%@7",display.text];
}

- (IBAction) button8 {
    display.text=[NSString stringWithFormat:@"%@8",display.text];
}

- (IBAction) button9 {
    display.text=[NSString stringWithFormat:@"%@9",display.text];
}

- (IBAction) button0 {
    display.text=[NSString stringWithFormat:@"%@0",display.text];
}

- (IBAction) plusbutton {
    operation = Plus;
    storage = display.text;
    display.text=@"";
}

- (IBAction) minusbutton {
    operation = Minus;
    storage = display.text;
    display.text=@"";
}

- (IBAction) multiplybutton {
    operation = Multiply;
    storage = display.text;
    display.text=@"";
}

- (IBAction) dividebutton {
    operation = Divide;
    storage = display.text;
    display.text=@"";
}

- (IBAction) equalsbutton {
    NSString *val = display.text;
    switch(operation) {
        case Plus :
            display.text= [NSString stringWithFormat:@"%qi",[val longLongValue]+[storage longLongValue]];
            break;
        case Minus:
            display.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]-[val longLongValue]];
            break;
        case Divide:
            display.text= [NSString stringWithFormat:@"%qi",[storage longLongValue]/[val longLongValue]];
            break;
        case Multiply:
            display.text= [NSString stringWithFormat:@"%qi",[val longLongValue]*[storage longLongValue]];
            break;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
