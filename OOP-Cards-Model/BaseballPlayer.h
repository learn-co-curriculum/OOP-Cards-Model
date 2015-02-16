//
//  BaseballPlayer.h
//  OOP-Cards-Model
//
//  Created by Louis Tur on 2/14/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseballPlayer : NSObject

@property (nonatomic) NSNumber * playerWeight;
@property (nonatomic) NSNumber *  playerNumber;
@property (nonatomic) NSNumber * playerHeight;
@property (strong, nonatomic) NSString * teamName;
@property (strong, nonatomic) NSString * playerFirstName;
@property (strong, nonatomic) NSString * playerLastName;

-(instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName weight:(NSNumber *)weight number:(NSNumber *)number height:(NSNumber *)height;

+(NSNumber *)convertLbsToKGsWithLbs:(NSNumber *)weight;

@end
