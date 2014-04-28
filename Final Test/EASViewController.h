//
//  EASViewController.h
//  EtchASketch
//
//  Created by Diehl, Jon on 4/16/14.
//  Copyright (c) 2014 Diehl, Jon. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "EASView.h"

@interface EASViewController : UIViewController

@property (weak, nonatomic) IBOutlet EASView *drawView;

- (IBAction)horizontalRotationDetected:(UIRotationGestureRecognizer *)sender;
- (IBAction)verticalRotationDetected:(UIRotationGestureRecognizer *)sender;

@end
