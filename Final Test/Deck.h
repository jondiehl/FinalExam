//
//  Deck.h
//  Practice 1
//
//  Created by Jon Diehl on 2/27/14.
//  Copyright (c) 2014 Jon Diehl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"


@interface Deck : NSObject

@property (strong, nonatomic) NSMutableArray *cards;

- (void)addCard:(Card *)card atTop:(BOOL)atTop;

- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
