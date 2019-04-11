//
//  ViewController.m
//  Dice Bag
//
//  Created by Doug DeJulio on 2019-04-08.
//  Copyright © 2019 Doug DeJulio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

#pragma mark Basic Stuff

- (ViewController*) init {
    _dieOptions = @[ @"4", @"6", @"8", @"10", @"12", @"20", @"100" ];
    return [super init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark UIPickerViewDataSource stuffs

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return _dieOptions.count;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return _dieOptions[row];
}

#pragma mark UIPickerViewDelegat stuffs

- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    ;
}

#pragma mark Actual Methods

- (void) setDiceValue {

}

- (void) setDieValue {

}

@end
