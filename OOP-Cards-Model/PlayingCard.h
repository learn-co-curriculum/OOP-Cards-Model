//
//  PlayingCard.h
//  OOP-Cards-Model
//
//  Created by Louis Tur on 2/14/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card


@property (nonatomic)                   NSNumber * rank;
@property (strong, nonatomic)           NSString * suit;
@property (strong, nonatomic, readonly) NSArray  * validSuits;

-(instancetype) initWithSuit:(NSString *)suit rank:(NSNumber *)rank;

@end
