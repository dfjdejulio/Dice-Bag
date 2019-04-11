//
//  ViewController.h
//  Dice Bag
//
//  Created by Doug DeJulio on 2019-04-08.
//  Copyright © 2019 Doug DeJulio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

#pragma mark Storyboard Thingies

//@property (weak, nonatomic) IBOutlet UIStepper* stepper;
@property (weak, nonatomic) IBOutlet UILabel* diceView;
@property (weak, nonatomic) IBOutlet UIPickerView* dieView;
@property (weak, nonatomic) IBOutlet UILabel* outputView;

#pragma mark Data

@property NSArray* dieOptions;

@property NSInteger dice;
@property NSInteger die;

#pragma mark Methods

- (IBAction) setDiceValue;
- (IBAction) setDieValue;

@end

