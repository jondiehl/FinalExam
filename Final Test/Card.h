//
//  Card.h
//  Practice 1
//
//  Created by Jon Diehl on 2/27/14.
//  Copyright (c) 2014 Jon Diehl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property(strong, nonatomic) NSString *contents;
@property(nonatomic) BOOL matched;
@property(nonatomic) BOOL chosen;

- (int)match:(Card *)card;

@end
