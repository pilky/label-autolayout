//
//  M3ViewController.h
//  AutolayoutTest
//
//  Created by Martin Pilkington on 28/01/2013.
//  Copyright (c) 2013 M Cubed Software Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface M3ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *topText;
@property (weak, nonatomic) IBOutlet UILabel *bottomText;
- (IBAction)topLong:(id)sender;
- (IBAction)bottomLong:(id)sender;
- (IBAction)bothShort:(id)sender;
- (IBAction)bothLong:(id)sender;

@end
