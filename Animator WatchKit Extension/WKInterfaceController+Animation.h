//
//  WKInterfaceController+Animation.h
//  Odell Lake Watch
//
//  Created by Robert Linnemann on 9/7/15.
//  Copyright © 2015 Epistrophy Products Inc. All rights reserved.
//

#import <WatchKit/WatchKit.h>

@interface WKInterfaceController (Animation)


- (void)animateWithDuration:(NSTimeInterval)duration
                 animations:(void (^)(void))animations
                 completion:(void (^)(void))completion;

@end
