//
//  BaseballPlayerSpec.m
//  OOP-Cards-Model
//
//  Created by Chris Gonzales on 6/10/14.
//  Copyright 2014 Al Tyus. All rights reserved.
//

#import "Specta.h"
#import "BaseballPlayer.h"
#define EXP_SHORTHAND
#import "Expecta.h"
#import "KIF.h"
#import "Swizzlean.h"

SpecBegin(BaseballPlayer)

describe(@"BaseballPlayer", ^{
    
    describe(@"Using BaseballPlayer initializer", ^{
        __block BaseballPlayer *defaultPlayer;
        
        beforeAll(^{
            defaultPlayer = [[BaseballPlayer alloc] init];
        });
        
        it(@"should return the default weight",^{
            expect(defaultPlayer.playerWeight).to.equal(@0);
        });
        
        it(@"should return the default height",^{
            expect(defaultPlayer.playerHeight).to.equal(@0);
        });
        
        it(@"should return the default number",^{
            expect(defaultPlayer.playerNumber).to.equal(@0);
        });
        
        it(@"should return the default first name",^{
            expect(defaultPlayer.playerFirstName).to.equal(@"");
        });
        
        it(@"should return the default last name",^{
            expect(defaultPlayer.playerLastName).to.equal(@"");
        });
    });
    
    describe(@"Using BaseballPlayer designated initializer", ^{
        __block BaseballPlayer *player;
        
        beforeAll(^{
            player = [[BaseballPlayer alloc] initWithFirstName:@"Hank" lastName:@"Aaron" weight:@180 number:@44 height:@72];
        });
        
        it(@"should set weight to the correct value",^{
            expect(player.playerWeight).to.equal(@180);
        });
        
        it(@"should set height to the correct value",^{
            expect(player.playerHeight).to.equal(@72);
        });
        
        it(@"should set number to the correct value",^{
            expect(player.playerNumber).to.equal(@44);
        });
        
        it(@"should set first name to the correct value",^{
            expect(player.playerFirstName).to.equal(@"Hank");
        });
        
        it(@"should set last name to the correct value",^{
            expect(player.playerLastName).to.equal(@"Aaron");
        });
    });
    
    describe(@"Validate Setters/Getters with Designated Init", ^{
        
        __block BaseballPlayer * otherPlayer;
        __block BaseballPlayer *alTyrus;

        beforeAll(^{
            otherPlayer =   [[BaseballPlayer alloc] init];
            alTyrus     =   [[BaseballPlayer alloc] initWithFirstName:@"Al"
                                                             lastName:@"Tyus"
                                                               weight:@250
                                                               number:@55
                                                               height:@72];
        });
        
        describe(@"", ^{
            it(@"weight should be what I set it to",^{
                otherPlayer.playerWeight = @250;
                expect(otherPlayer.playerWeight).to.equal(@250);
                
                expect(otherPlayer.playerWeight).to.equal(alTyrus.playerWeight);
            });
            
            it(@"number should be what I set it to",^{
                otherPlayer.playerNumber = @55;
                expect(otherPlayer.playerNumber).to.equal(@55);
                
                expect(otherPlayer.playerNumber).to.equal(alTyrus.playerNumber);
            });
            
            it(@"height should be what I set it to",^{
                otherPlayer.playerHeight = @72;
                expect(otherPlayer.playerHeight).to.equal(@72);
                
                expect(otherPlayer.playerHeight).to.equal(alTyrus.playerHeight);
            });
            
            
            it(@"first name should be what I set it to",^{
                otherPlayer.playerFirstName = @"Al";
                expect(otherPlayer.playerFirstName).to.equal(@"Al");
                
                expect(otherPlayer.playerFirstName).to.equal(alTyrus.playerFirstName);
                
            });
            
            it(@"last name should be what I set it to",^{
                otherPlayer.playerLastName = @"Tyus";
                expect(otherPlayer.playerLastName).to.equal(@"Tyus");
                
                expect(otherPlayer.playerLastName).to.equal(alTyrus.playerLastName);
            });
            
        });
    });

    describe(@"Testings convertLbsToKGsWithLbs:", ^{
        it(@"should perform a weight conversion and return the expected value",^{
            NSNumber *kilos = @(roundf([[BaseballPlayer convertLbsToKGsWithLbs:@180] floatValue]));
            expect(kilos).to.equal(@82);
        });
    });
    
});

SpecEnd
