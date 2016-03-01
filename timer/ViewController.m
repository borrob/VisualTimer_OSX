//
//  ViewController.m
//  timer
//
//  Created by Rob van Loon on 29-02-16.
//  Copyright © 2016 Rob van Loon. All rights reserved.
//
// To have a counter that also displays the timer counting, we need to change a couple of things
// set the interval to 1 sec and keep the even firing
// manually add all the seconds up in a counter
// if counter reaches the setTime, fire the main event en reset the timer

#import "ViewController.h"

@implementation ViewController

NSTimer *theTimer;

- (void)viewDidLoad {
    [super viewDidLoad];

    //Do any additional setup after loading the view.
    self.myView.layer.backgroundColor = CGColorCreateGenericRGB(1.0, 0, 0, 1.0);
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (void)startTimer:(float)timertime{
    theTimer = [NSTimer scheduledTimerWithTimeInterval:timertime target:self selector:@selector(repeatingTimer:) userInfo:nil repeats:YES];
    self.startButton.enabled=false;
    self.stopButton.enabled=true;
}

- (void)setRed:(id)sender{
    //NSLog(@"settingRed");
    self.myView.layer.backgroundColor = CGColorCreateGenericRGB(1.0, 0, 0, 1.0);
}

- (void)setGreen:(id)sender{
    //NSLog(@"settingGreen");
    self.myView.layer.backgroundColor = CGColorCreateGenericRGB(0, 1.0, 0, 1.0);
}

- (void) repeatingTimer:(id)sender {
    //NSLog(@"fired!");
    NSTimer *timer2;
    timer2 = [NSTimer scheduledTimerWithTimeInterval:0 target:self selector:@selector(setGreen:) userInfo:nil repeats:FALSE];
    [timer2 fire];
    NSTimer *timer3;
    timer3 = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(setRed:) userInfo:nil repeats:FALSE];
    NSTimer *timer4;
    timer4 = [NSTimer scheduledTimerWithTimeInterval:0.2 target:self selector:@selector(setGreen:) userInfo:nil repeats:FALSE];
    NSTimer *timer5;
    timer5 = [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(setRed:) userInfo:nil repeats:FALSE];
}

- (IBAction)start:(id)sender {
    [self startTimer:self.timerTime.floatValue];
    self.timerTime.enabled=false;
}

- (IBAction)stop:(id)sender {
    [theTimer invalidate];
    self.startButton.enabled=true;
    self.stopButton.enabled=false;
    self.timerTime.enabled=true;
}

@end
