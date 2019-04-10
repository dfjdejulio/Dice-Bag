//
//  DiceBag.m
//  Dice Bag
//
//  Created by Doug DeJulio on 2019-04-09.
//  Copyright © 2019 Doug DeJulio. All rights reserved.
//

#import "DiceBag.h"

@implementation DiceBag

- (void) roll {
    int i;
    long results[_dice];
    long sum = 0;

    NSMutableString* resultString = [NSMutableString new];

    for (i=0; i<_dice; i++) {
        sum += (results[i] = ROLL(_die));
        if (i) {
            [resultString appendString:@"+ "];
        }
        [resultString appendFormat:@"%ld ", results[i]];
    }

    [resultString appendFormat:@"= %ld", sum];

    _intValue = sum;
    _stringValue = resultString;
}

- (NSInteger) rollWithDice:(NSInteger)dice andDie:(NSInteger)die {
    _dice = dice;
    _die = die;
    [self roll];
    return _intValue;
}

@end
