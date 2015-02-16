//
//  BaseballCardSpec.m
//  OOP-Cards-Model
//
//  Created by Chris Gonzales on 6/10/14.
//  Copyright 2014 Al Tyus. All rights reserved.
//

#import "Specta.h"
#import "BaseballCard.h"
#import "BaseballPlayer.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "KIF.h"
#import "Swizzlean.h"

SpecBegin(BaseballCard)

describe(@"BaseballCard", ^{
    
    #pragma mark - test initializers
    describe(@"Validating BaseballCard with designated initializer", ^{
        
        __block BaseballCard *baseballCard;
        __block BaseballPlayer *baseballPlayer;
        
        beforeAll(^{
            baseballPlayer = [[BaseballPlayer alloc] init];
            baseballCard = [[BaseballCard alloc] initWithBaseballPlayer:baseballPlayer teamName:@"Flatiron School" brand:@"New Era" cardNumber:@1272];
        });
        
        it(@"exists", ^{
            expect(baseballCard).notTo.beNil();
        });
        it(@"baseball player of card should be equal to baseball player",^{
            expect(baseballCard.player).to.equal(baseballPlayer);
        });
        
        it(@"baseball card team should be correct",^{
            expect(baseballCard.player.teamName).to.equal(@"Flatiron School");
        });

        it(@"brand should be correct",^{
            expect(baseballCard.brand).to.equal(@"New Era");
        });

        it(@"cardNumber should be correct",^{
            expect(baseballCard.cardNumber).to.equal(@1272);
        });
   
        it(@"returns the correct description",^{
            NSString *description = baseballCard.description;
            expect(description).to.equal(@"Player name:  Team name:Flatiron School Brand:New Era Card Number:1272");
        });
    });


    #pragma mark - default init
    describe(@"baseball card default init", ^{
        __block BaseballCard *defaultBaseballCard;
        
        beforeAll(^{
            defaultBaseballCard = [[BaseballCard alloc] init];
        });

        it(@"should have a default baseball player value",^{
            expect(defaultBaseballCard.player.playerWeight).to.equal(@0);
            expect(defaultBaseballCard.player.playerNumber).to.equal(@0);
            expect(defaultBaseballCard.player.playerHeight).to.equal(@0);
            expect(defaultBaseballCard.player.playerFirstName).to.equal(@"");
            expect(defaultBaseballCard.player.playerLastName).to.equal(@"");
        });
        
        it(@"should have a default team value",^{
            expect(defaultBaseballCard.player.teamName).to.equal(@"");
        });
        
        it(@"should have a default brand value",^{
            expect(defaultBaseballCard.brand).to.equal(@"");
        });
        
        it(@"should have a default number",^{
            expect(defaultBaseballCard.cardNumber).to.equal(@0);
        });
    });

#pragma mark - test property getters/setters
    describe(@"baseball card getters/setters", ^{
        __block BaseballCard *card;
        __block BaseballPlayer *baseballPlayer;
        
        beforeAll(^{
            card = [[BaseballCard alloc] init];
            baseballPlayer = [[BaseballPlayer alloc] init];
        });
        
        it(@"should have the team name I set it to",^{
            card.player.teamName = @"Braves";
            expect(card.player.teamName).to.equal(@"Braves");
        });
        
        it(@"should have the brand name I set it to",^{
            card.brand = @"New Era";
            expect(card.brand).to.equal(@"New Era");
        });
        
        it(@"should have the card number I set it to",^{
            card.cardNumber = @2520;
            expect(card.cardNumber).to.equal(@2520);
        });
        
        it(@"should have the baseball player I set it to",^{
            card.player = baseballPlayer;
            expect(card.player).to.equal(baseballPlayer);
        });
        
        it(@"should have the isFaceUp value I set it to",^{
            card.faceUp = NO;
            expect(card.isFaceUp).to.beFalsy();
        });
    
    });
});

SpecEnd
