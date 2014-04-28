//
//  SpirographView.h
//  Spirograph
//
//  Created by Michael Toth on 2/20/14.
//  Copyright (c) 2014 Michael Toth. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpirographView : UIView {
    UIView *overWriteView;
    CGFloat lastL,lastK;
}
@property (nonatomic) CGFloat l,k,stepSize;
@property (nonatomic) NSUInteger numberOfSteps;
@property (nonatomic) BOOL overWrite;

@end
