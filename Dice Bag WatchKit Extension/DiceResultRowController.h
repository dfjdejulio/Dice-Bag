//
//  DiceResultRowController.h
//  Dice Bag WatchKit Extension
//
//  Created by Doug DeJulio on 2019-04-08.
//  Copyright © 2019 Doug DeJulio. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DiceResultRowController : NSObject

@property (weak, nonatomic) IBOutlet WKInterfaceLabel* diceResultLabel;

@end

NS_ASSUME_NONNULL_END
