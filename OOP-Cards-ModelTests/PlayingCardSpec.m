//
//  PlayingCardSpec.m
//  OOP-Cards-Model
//
//  Created by Chris Gonzales on 6/10/14.
//  Copyright 2014 Al Tyus. All rights reserved.
//

#import "Specta.h"
#import "PlayingCard.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "KIF.h"
#import "Swizzlean.h"

SpecBegin(PlayingCard)

describe(@"PlayingCard", ^{
    
    __block PlayingCard * myCard;
    __block PlayingCard * defaultCard;
    beforeEach(^{
        myCard = [[PlayingCard alloc] initWithSuit:@"♠️" rank:@5];
        defaultCard = [[PlayingCard alloc] init];
    });
    
    describe(@"My Card is not nil", ^{
        it(@"exists", ^{
            expect(myCard).notTo.beNil();
        });
    });
    
    describe(@"initWithSuit:Rank:", ^{
        it(@"should have a suit matching what I set it to",^{
            expect(myCard.suit).to.equal(@"♠️");
        });
        
        it(@"should have a rank matching what I set it to",^{
            expect(myCard.rank).to.equal(@5);
        });
    });
    
    describe(@"init", ^{
        
        it(@"should set suit to an empty string by default",^{
            expect(defaultCard.suit).to.equal(@"");
        });
        
        it(@"should set rank to 0 by default",^{
            expect(defaultCard.rank).to.equal(@0);
        });
    });
    
    describe(@"setSuit", ^{
        it(@"the suit should match the value I set",^{
            myCard.suit = @"♥️";
            expect(myCard.suit).to.equal(@"♥️");
        });
    });
    
    describe(@"setRank", ^{
        it(@"the rank should match the value I set",^{
            myCard.rank = @10;
            expect(myCard.rank).to.equal(@10);
        });
    });
    
    describe(@"isFaceUp", ^{
        it(@"isFaceUp to return the set value",^{
            myCard.faceUp = YES;
            expect(myCard.isFaceUp).to.beTruthy();
        });
    });
});
    
describe(@"Validation with inherited init", ^{
    __block PlayingCard *myValidPlayingCard;
    __block PlayingCard *myInvalidPlayingCard;
    
    beforeEach(^{
        myValidPlayingCard = [[PlayingCard alloc] init];
        myInvalidPlayingCard = [[PlayingCard alloc] init];
    });
    
    it(@"valid ranks should return value as NSNumber",^{
        myValidPlayingCard.rank = @13;
        expect(myValidPlayingCard.rank).to.equal(@13);
    });
    
    it(@"invalid ranks should return 0 value",^{
        myInvalidPlayingCard.rank = @14;
        expect(myInvalidPlayingCard.rank).to.equal(@0);
    });
    
    it(@"valid suits should return a valid suit",^{
        myValidPlayingCard.suit = @"♥️";
        expect(myValidPlayingCard.suit).to.equal(@"♥️");
    });
    
    it(@"invalid suits should return an empty string",^{
        myInvalidPlayingCard.suit = @"X";
        expect(myInvalidPlayingCard.suit).to.equal(@"");
    });
});

describe(@"Validation with designated initializer", ^{
    __block PlayingCard *myValidPlayingCard;
    __block PlayingCard *myInvalidPlayingCard;
    
    beforeAll(^{
        myValidPlayingCard = [[PlayingCard alloc] initWithSuit:@"♥️" rank:@13];
        myInvalidPlayingCard = [[PlayingCard alloc] initWithSuit:@"X" rank:@14];
    });
    
    it(@"valid suits should return suit",^{
        expect(myValidPlayingCard.suit).to.equal(@"♥️");
    });
    it(@"invalid suits should return an empty string",^{
        expect(myInvalidPlayingCard.suit).to.equal(@"");
    });
    it(@"valid rank shoud return rank", ^{
        expect(myValidPlayingCard.rank).to.equal(@13);
    });
    it(@"invalid rank should return 0", ^{
        expect(myInvalidPlayingCard.rank).to.equal(@0);
    });
});

SpecEnd