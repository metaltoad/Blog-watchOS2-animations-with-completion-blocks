//
//  WKInterfaceController+Animation.m
//  Odell Lake Watch
//
//  Created by Robert Linnemann on 9/7/15.
//  Copyright © 2015 Epistrophy Products Inc. All rights reserved.
//

#import "WKInterfaceController+Animation.h"

@implementation WKInterfaceController(Animation)


- (void)animateWithDuration:(NSTimeInterval)duration
                 animations:(void (^)(void))animations
                 completion:(void (^)(void))completion {
    //ok do the animation now
    [self animateWithDuration:duration animations:animations];
    //wait for the animation to complete.
    int64_t delay = duration;
    dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, delay * NSEC_PER_SEC);
    dispatch_after(time, dispatch_get_main_queue(), ^(void){
        completion();
    });
}

@end
