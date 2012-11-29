//
//  ViewController.m
//  school
//
//  Created by Arnaud Miguet on 28/11/12.
//  Copyright (c) 2012 Tap‘n'Develop. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize backGround;
@synthesize stickMan;
@synthesize timer;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    backGround.image = [UIImage imageNamed:@"backWC.png"];
    stickMan.image = [UIImage imageNamed:@"stickman.png"];
    i=0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)moveUpTouchDown:(id)sender {
    i=1;
    timer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(targetmethod:) userInfo:nil repeats:YES];
}

- (IBAction)moveRightTouchDown:(id)sender {
    i=2;
    timer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(targetmethod:) userInfo:nil repeats:YES];
}

- (IBAction)moveDownTouchDown:(id)sender {
    i=3;
    timer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(targetmethod:) userInfo:nil repeats:YES];
}

- (IBAction)moveLeftTouchDown:(id)sender {
    i=4;
    timer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(targetmethod:) userInfo:nil repeats:YES];
}

- (IBAction)stop:(id)sender {
    [timer invalidate];
    timer = nil;
}

-(void) targetmethod:(id)sender {
    position = stickMan.center;
    CGRect frame = stickMan.frame;
    
    if (i==1) {
        position.y -=4;
        stickMan.frame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width-=1.5, frame.size.height-=2.337);
    }
    
    if (i==2) {
        position.x +=4;
    }
    
    if (i==3) {
        position.y +=4;
        stickMan.frame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width+=1.5, frame.size.height+=2.337);
    }
    
    if (i==4) {
        position.x -=4;
    }
    
    stickMan.center = position;
}
@end
