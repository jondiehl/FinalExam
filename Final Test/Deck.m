//
//  Deck.m
//  Practice 1
//
//  Created by Jon Diehl on 2/27/14.
//  Copyright (c) 2014 Jon Diehl. All rights reserved.
//
#import "Deck.h"

@implementation Deck

-(NSMutableArray *)cards {
    if (!_cards) {
        _cards = [[NSMutableArray alloc] init];
    }
    return _cards;
}

-(void)addCard:(Card *)card atTop:(BOOL)atTop {
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

- (void) addCard:(Card *)card {
    [self addCard:card atTop:NO];
}

- (Card *)drawRandomCard {
    Card *randomCard = nil;
    if ([self.cards count]) {
        unsigned index = arc4random() % [self.cards count];
        randomCard = [self.cards objectAtIndex:index];
        [self.cards removeObject:randomCard];
    }
    return randomCard;
}

@end
