//
//  M3ViewController.m
//  AutolayoutTest
//
//  Created by Martin Pilkington on 28/01/2013.
//  Copyright (c) 2013 M Cubed Software Ltd. All rights reserved.
//

#import "M3ViewController.h"

@interface M3ViewController ()

@end

@implementation M3ViewController {
	NSString *longText;
	NSString *shortText;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	longText = @"This is a long text to see what happens when we have two lines";
	shortText = @"This is a short text";
	
	// Do any additional setup after loading the view, typically from a nib.
	[self topLong:self];
}

- (IBAction)topLong:(id)sender {
	[self.topText setText:longText];
	[self.bottomText setText:shortText];
}

- (IBAction)bottomLong:(id)sender {
	[self.topText setText:shortText];
	[self.bottomText setText:longText];
}

- (IBAction)bothShort:(id)sender {
	[self.topText setText:shortText];
	[self.bottomText setText:shortText];
}

- (IBAction)bothLong:(id)sender {
	[self.topText setText:longText];
	[self.bottomText setText:longText];
}

@end
