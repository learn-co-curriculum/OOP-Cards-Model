//
//  BaseballCard.h
//  OOP-Cards-Model
//
//  Created by Louis Tur on 2/14/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "Card.h"
#import "BaseballPlayer.h"

@interface BaseballCard : Card

@property (strong, nonatomic) BaseballPlayer * player;

-(instancetype)initWithBaseballPlayer:(BaseballPlayer *) player
                             teamName:(NSString *)teamName
                                brand:(NSString *)brand
                           cardNumber:(NSNumber *)cardNumber;

@end
