//
//  Card.m
//  Practice 1
//
//  Created by Jon Diehl on 2/27/14.
//  Copyright (c) 2014 Jon Diehl. All rights reserved.
//

#import "Card.h"

@implementation Card
-(int)match:(Card *)aCard {
    if ([aCard.contents isEqualToString:self.contents]) {
        return 1;
    } else {
        return 0;
    }
}
@end
