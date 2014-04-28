//
//  EASView.m
//  EtchASketch
//
//  Created by Diehl, Jon on 4/16/14.
//  Copyright (c) 2014 Diehl, Jon. All rights reserved.
//


#import "EASView.h"

@implementation EASView

@synthesize currentPoint;

- (id)initWithFrame:(CGRect)frame
{
    NSLog(@"EASView initialized with frame");
    
    self = [super initWithFrame:frame];
    if (self) {
        _currentPath = [[UIBezierPath alloc] init];
        [_currentPath setLineWidth:3.0];
        [[UIColor blackColor] setStroke];
        
        currentPoint = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
        [_currentPath moveToPoint:CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2)];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder{
    NSLog(@"EASView initialized with coder");
    
    self = [super initWithCoder:aDecoder];
    if(self)
    {
        _currentPath = [[UIBezierPath alloc] init];
        
        currentPoint = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
        [_currentPath moveToPoint:CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2)];
    }
    
    return self;
}

// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    // Draw our dot for the user
    UIRectFill(CGRectMake(currentPoint.x, currentPoint.y, 4, 4));
    // Draw our existing path
    [_currentPath addLineToPoint:currentPoint];
    [_currentPath stroke];
}

@end
