//
//  ViewController.h
//  school
//
//  Created by Arnaud Miguet on 28/11/12.
//  Copyright (c) 2012 Tap‘n'Develop. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    CGPoint position;
    NSTimer *timer;
    int i;
}

@property (strong, nonatomic) IBOutlet UIImageView *backGround;
@property (strong, nonatomic) IBOutlet UIImageView *stickMan;

@property (nonatomic, retain) NSTimer * timer;

- (IBAction)moveUp:(id)sender;
- (IBAction)moveRight:(id)sender;
- (IBAction)moveDown:(id)sender;
- (IBAction)moveLeft:(id)sender;

@end
