//
//  PlayingCardDeck.m
//  Practice 1
//
//  Created by Jon Diehl on 2/27/14.
//  Copyright (c) 2014 Jon Diehl. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"


@implementation PlayingCardDeck
- (id)init {
    self = [super init];
    if (self) {
        for (NSString *suit in [PlayingCard validSuits]) {
            for (NSUInteger i =1; i<[PlayingCard maxRank] ; i++) {
                PlayingCard *card = [[PlayingCard alloc] init];
                card.rank = i;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    return self;
}

@end
