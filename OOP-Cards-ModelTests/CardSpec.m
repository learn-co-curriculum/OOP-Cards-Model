//
//  CardSpec.m
//  OOP-Cards-Model
//
//  Created by Chris Gonzales on 6/10/14.
//  Copyright 2014 Al Tyus. All rights reserved.
//

#import "Specta.h"
#import "Card.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "KIF.h"
#import "Swizzlean.h"

SpecBegin(Card)

describe(@"Card", ^{
    __block Card *card;
    
    beforeAll(^{
        card = [[Card alloc] init];
    });
    
    it(@"exists", ^{
        expect(card).notTo.beNil();
    });
    
    describe(@"description", ^{
        it(@"should return an empty string and be implemented in Card subclass",^{
            expect(card.description).to.equal(@"");
        });
    });
    
    describe(@"isFaceUp", ^{
        it(@"should return YES if the card is face up",^{
            card.faceUp = YES;
            expect(card.isFaceUp).to.equal(1);
        });
    });
    
    describe(@"frame", ^{
        it(@"should return a null frame", ^{
            expect(card.cardFrame).to.beNil;
        });
    });
    
    describe(@"flipCard", ^{
        it(@"should flip the card to be face down if it is face up", ^{
            card.faceUp = YES;
            [card flipCard];
            expect(card.isFaceUp).to.equal(0);
        });
        
        it(@"should flip the card to be face up if it is face down", ^{
            card.faceUp = NO;
            [card flipCard];
            expect(card.isFaceUp).to.equal(1);
        });
    });
    
});

SpecEnd
