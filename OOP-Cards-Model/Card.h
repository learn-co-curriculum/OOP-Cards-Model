//
//  Card.h
//  OOP-Cards-Model
//
//  Created by Louis Tur on 2/14/15.
//  Copyright (c) 2015 Al Tyus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic)   NSString *  brand;
@property (strong, nonatomic)   NSNumber *  cardNumber;

@property (nonatomic) CGRect cardFrame;

@property (nonatomic)                   BOOL        matched;
@property (nonatomic, getter=isFaceUp)  BOOL        faceUp;

-(void) flipCard;

@end
