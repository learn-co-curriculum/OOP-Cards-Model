//
//  BaseballCard.m
//  OOP-Cards-Model
//
//  Created by Louis Tur on 2/14/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "BaseballCard.h"

@implementation BaseballCard

-(instancetype)initWithBaseballPlayer:(BaseballPlayer *)player teamName:(NSString *)teamName brand:(NSString *)brand cardNumber:(NSNumber *)cardNumber{
    self = [super init];
    if (self) {
        _player = player;
        _player.teamName = teamName;
        self.brand = brand;
        self.cardNumber = cardNumber;
    }
    return self;
}
-(instancetype) init{
    return [self initWithBaseballPlayer:[[BaseballPlayer alloc] init] teamName:@"" brand:@"" cardNumber:@0];
}
-(NSString *)description{
    return [NSString stringWithFormat:@"Player name:%@ Team name:%@ Brand:%@ Card Number:%@", self.player, self.player.teamName, self.brand, self.cardNumber];
}

@end
