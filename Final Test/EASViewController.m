//
//  EASViewController.m
//  EtchASketch
//
//  Created by Diehl, Jon on 4/16/14.
//  Copyright (c) 2014 Diehl, Jon. All rights reserved.
//


#import "EASViewController.h"

@implementation EASViewController

@synthesize drawView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)horizontalRotationDetected:(UIRotationGestureRecognizer *)sender
{
    NSLog(@"%f radians horizontal", sender.rotation);
    
    float currXPoint = [drawView currentPoint].x;
    float currYPoint = [drawView currentPoint].y;
    // check if we have changed directions and are now moving to the left
    if (sender.velocity < 0)
    {
        currXPoint = currXPoint - (-1 * sender.rotation);
    }
    // if we're suddenly moving to the right
    else if (sender.velocity > 0)
    {
        currXPoint = currXPoint + (sender.rotation);
    }
    
    // Bound our point to the dimensions of the drawing area
    if (currXPoint < 0)
    {
        currXPoint = 0;
    }
    if (currXPoint > self.drawView.bounds.size.width)
    {
        currXPoint = self.drawView.bounds.size.width;
    }
    
    sender.rotation = 0;
    
    // Update our current point with our newly computed X value
    [self.drawView setCurrentPoint:CGPointMake(currXPoint, currYPoint)];
    
    [drawView setNeedsDisplay];
}

- (IBAction)verticalRotationDetected:(UIRotationGestureRecognizer *)sender
{
    NSLog(@"%f radians vertical", sender.rotation);
    
    float currXPoint = [drawView currentPoint].x;
    float currYPoint = [drawView currentPoint].y;
    // check if we have changed directions and are now moving to the left
    if (sender.velocity < 0)
    {
        currYPoint = currYPoint - (-1 * sender.rotation);
    }
    // if we're suddenly moving to the right
    else if (sender.velocity > 0)
    {
        currYPoint = currYPoint + (sender.rotation);
    }
    
    // Bound our point to the dimensions of the drawing area
    if (currYPoint < 0)
    {
        currYPoint = 0;
    }
    if (currYPoint > self.drawView.bounds.size.width)
    {
        currYPoint = self.drawView.bounds.size.width;
    }
    
    sender.rotation = 0;
    
    // Update our current point with our newly computed X value
    [self.drawView setCurrentPoint:CGPointMake(currXPoint, currYPoint)];
    
    [drawView setNeedsDisplay];
}
@end
