//
//  ViewController.h
//  timer
//
//  Created by Rob van Loon on 29-02-16.
//  Copyright © 2016 Rob van Loon. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

@property (strong) IBOutlet NSView *myView;
@property (weak) IBOutlet NSTextField *timerTime;
@property (weak) IBOutlet NSButton *startButton;
@property (weak) IBOutlet NSButton *stopButton;

- (IBAction)start:(id)sender;
- (IBAction)stop:(id)sender;

@end

