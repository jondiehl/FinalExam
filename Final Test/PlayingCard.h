//
//  PlayingCard.h
//  Practice 1
//
//  Created by Jon Diehl on 2/27/14.
//  Copyright (c) 2014 Jon Diehl. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (nonatomic, strong) NSString *suit;
@property (nonatomic) NSUInteger rank;
+ (NSArray *)validSuits;
+ (NSArray *)rankStrings;
+ (NSUInteger)maxRank;
@end

