//
//  InterfaceController.m
//  Animator WatchKit Extension
//
//  Created by Robert Linnemann on 9/28/15.
//  Copyright © 2015 Metal Toad. All rights reserved.
//

#import "InterfaceController.h"
#import "WKInterfaceController+Animation.h"


@interface InterfaceController()

@property (nonatomic) IBOutlet WKInterfaceImage *toadImage;
@property (nonatomic) IBOutlet WKInterfaceGroup *moveGroup;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didAppear {
    //    [self animateWithDuration:1.0 animations:^{
    //        [self.toadImage setHeight:100.0f];
    //        [self.toadImage setWidth:100.0f];
    //        [self.toadImage setAlpha:0.5f];
    //    }];
}

-(IBAction)animOne:(id)sender {
    [self animateWithDuration:1.0f animations:^{
        [self.toadImage setHeight:10.0f];
        [self.toadImage setWidth:10.0f];
        [self.toadImage setHorizontalAlignment:WKInterfaceObjectHorizontalAlignmentRight];
        [self.toadImage setVerticalAlignment:WKInterfaceObjectVerticalAlignmentBottom];
    } completion:^{
        [self animateWithDuration:1.0f animations:^{
            [self.moveGroup setHeight:400.0f];
            [self.moveGroup setWidth:400.0f];
        } completion:^{
            [self animateWithDuration:0.5f animations:^{
            } completion:^{
                [self animateWithDuration:1.0f animations:^{
                    [self.toadImage setHorizontalAlignment:WKInterfaceObjectHorizontalAlignmentCenter];
                    [self.toadImage setVerticalAlignment:WKInterfaceObjectVerticalAlignmentCenter];
                    [self.moveGroup setHeight:0.0f];
                    [self.moveGroup setWidth:0.0f];
                }];
            }];
        }];
    }];
}

-(IBAction)animTwo:(id)sender {
    [self animateWithDuration:1.0 animations:^{
        [self.toadImage setHorizontalAlignment:WKInterfaceObjectHorizontalAlignmentLeft];
        [self.toadImage setVerticalAlignment:WKInterfaceObjectVerticalAlignmentTop];
    } completion:^{
        [self animateWithDuration:1.0 animations:^{
            [self.toadImage setHorizontalAlignment:WKInterfaceObjectHorizontalAlignmentRight];
            [self.toadImage setVerticalAlignment:WKInterfaceObjectVerticalAlignmentBottom];
        }];
    }];
}

-(IBAction)animReset:(id)sender {
    [self animateWithDuration:1.0 animations:^{
        [self.toadImage setAlpha:1.0f];
        [self.toadImage setHeight:75.0f];
        [self.toadImage setWidth:75.0f];
        [self.toadImage setHorizontalAlignment:WKInterfaceObjectHorizontalAlignmentCenter];
        [self.toadImage setVerticalAlignment:WKInterfaceObjectVerticalAlignmentCenter];
    }];
}


- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



