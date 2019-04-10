//
//  DiceBag.h
//  Dice Bag
//
//  Created by Doug DeJulio on 2019-04-09.
//  Copyright © 2019 Doug DeJulio. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

#define ROLL(x) ((random())%(x)+1)

@interface DiceBag : NSObject

#pragma mark Inputs

@property NSInteger dice;
@property NSInteger die;

#pragma mark Outputs

@property (readonly) NSString* stringValue;
@property (readonly) NSInteger intValue;

#pragma mark Methods

- (void) roll;
- (NSInteger) rollWithDice: (NSInteger) dice andDie: (NSInteger) die;

@end

NS_ASSUME_NONNULL_END
