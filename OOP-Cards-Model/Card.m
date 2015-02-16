//
//  Card.m
//  OOP-Cards-Model
//
//  Created by Louis Tur on 2/14/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import "Card.h"

@implementation Card

-(instancetype)init{
    self = [super init];
    if (self) {
        _faceUp = YES;
    }
    return self;
}

-(NSString *)description{
    return @"";
}

-(void)flipCard{
    self.faceUp = ![self isFaceUp];
}
-(BOOL)isFaceUp{
    return _faceUp;
}

@end
