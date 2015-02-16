//
//  PlayingCard.m
//  OOP-Cards-Model
//
//  Created by Louis Tur on 2/14/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "PlayingCard.h"

@interface PlayingCard ()

@end

@implementation PlayingCard

@synthesize validSuits  = _validSuits;
@synthesize suit        = _suit;
@synthesize rank        = _rank;

-(instancetype)initWithSuit:(NSString *)suit rank:(NSNumber *)rank{
    self = [super init];
    if (self) {
        self.suit = suit;
        self.rank = rank;
    }
    return self;
}
-(instancetype)init{
    return [self initWithSuit:@"" rank:@0];
}

// -- HELPERS -- //
-(BOOL)isValidSuit:(NSString *)suit{
    return [self.validSuits containsObject:suit];
}

// -- SETTERS AND GETTERS -- //
-(NSArray *)validSuits{
    if (!_validSuits) {
        _validSuits = @[@"♥️",@"♠️",@"♣️",@"♦️"];
    }
    return _validSuits;
}

-(NSString *)suit{
    if (!_suit) {
        _suit = @"X";
    }
    return _suit;
}
-(void)setSuit:(NSString *)suit{
    _suit = [self isValidSuit:suit] ? suit: @"";
}

-(NSNumber *)rank{
    if(!_rank){
        _rank = @0;
    }
    return _rank;
}
-(void)setRank:(NSNumber *)rank{
    _rank = ([rank integerValue] >= 1 &&
             [rank integerValue] < 14) ? rank : @0 ;
}

@end
