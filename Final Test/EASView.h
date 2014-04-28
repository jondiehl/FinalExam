//
//  EASView.h
//  EtchASketch
//
//  Created by Diehl, Jon on 4/16/14.
//  Copyright (c) 2014 Diehl, Jon. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface EASView : UIView

@property (nonatomic) CGPoint currentPoint;
@property (nonatomic, strong) UIBezierPath *currentPath;

@end
