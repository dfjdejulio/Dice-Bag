//
//  InterfaceController.h
//  Dice Bag WatchKit Extension
//
//  Created by Doug DeJulio on 2019-04-08.
//  Copyright © 2019 Doug DeJulio. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>
#import "DiceBag.h"

@interface InterfaceController : WKInterfaceController <WKCrownDelegate>

@property NSArray<NSString*> *dieChoices;

@property (weak, nonatomic) IBOutlet WKInterfaceButton* diceCountButton;
@property (weak, nonatomic) IBOutlet WKInterfacePicker* diePicker;
@property (weak, nonatomic) IBOutlet WKInterfaceButton* rollButton;
@property (weak, nonatomic) IBOutlet WKInterfaceTable* outputTable;

@property int dice;
@property int die;
@property int dieIndex;
@property DiceBag* diceBag;

- (IBAction) diceCountButtonPress;

- (IBAction) rollButtonPress;
- (IBAction) clearButtonPress;
- (IBAction) selectDie: (NSInteger) dieIndex;

@end
