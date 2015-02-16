//
//  BaseballPlayer.m
//  OOP-Cards-Model
//
//  Created by Louis Tur on 2/14/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "BaseballPlayer.h"

@implementation BaseballPlayer

-(instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName weight:(NSNumber *)weight number:(NSNumber *)number height:(NSNumber *)height{
    self = [super init];
    if (self) {
        _playerFirstName = firstName;
        _playerLastName = lastName;
        _playerWeight = weight;
        _playerHeight = height;
        _playerNumber = number;
        _teamName = @"";
    }
    return self;
}

-(instancetype)init{
    return [self initWithFirstName:@"" lastName:@"" weight:@0 number:@0 height:@0];
}
-(NSString *)description{
    return [NSString stringWithFormat:@"%@ %@", self.playerFirstName, self.playerLastName];
}

+(NSNumber *)convertLbsToKGsWithLbs:(NSNumber *)weight{
    NSNumber * conversionRate = @2.2046;
    return [NSNumber numberWithFloat:roundf([weight floatValue]/[conversionRate floatValue])];
}

@end
