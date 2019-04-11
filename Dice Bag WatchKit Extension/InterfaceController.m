//
//  InterfaceController.m
//  Dice Bag WatchKit Extension
//
//  Created by Doug DeJulio on 2019-04-08.
//  Copyright © 2019 Doug DeJulio. All rights reserved.
//

#import "InterfaceController.h"
#import "DiceResultRowController.h"

@interface InterfaceController ()

@end


@implementation InterfaceController

- (InterfaceController*)init {
    // Allocate stuff that needs allocating.
    _diceBag = [DiceBag new];
    _dice = 3;
    _die = 4;
    _dieIndex = 0;

    return [super init];
}

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    _dieChoices = @[
                    @"4",
                    @"6",
                    @"8",
                    @"10",
                    @"12",
                    @"20",
                    @"100"
                    ];


    NSMutableArray<WKPickerItem *> *diceList = [NSMutableArray new];

    for (NSString *die in _dieChoices) {
        WKPickerItem *item = [WKPickerItem new];
        item.title = die;
        [diceList addObject:item];
    }

    //DiceResultRowController* row = [_outputTable rowControllerAtIndex:0];
    //[row.diceResultLabel setText:@"Hello, sailor!"];

    // Set the picker list.
    [_diePicker setItems:diceList];
    // Pretend we just picked the first value.
    [self selectDie:0];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [_diePicker setSelectedItemIndex: _dieIndex];

    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction) diceCountButtonPress {
    
}

- (IBAction) selectDie: (NSInteger) dieIndex {
    _dieIndex = dieIndex;
    _die = _dieChoices[dieIndex].intValue;
}

- (IBAction) rollButtonPress {
    // Make a new row to hold the result.
    NSIndexSet* newRow = [[NSIndexSet alloc] initWithIndex:0];
    [_outputTable insertRowsAtIndexes:newRow withRowType:@"DiceResultRowController"];
    DiceResultRowController* row = [_outputTable rowControllerAtIndex:0];

    // Calculate the roll.
    [_diceBag rollWithDice:_dice andDie:_die];

    [row.diceResultLabel setText: _diceBag.stringValue ];
}

- (IBAction) clearButtonPress {
    // Empty out the result list.
    [_outputTable setRowTypes:@[]];
}

@end



