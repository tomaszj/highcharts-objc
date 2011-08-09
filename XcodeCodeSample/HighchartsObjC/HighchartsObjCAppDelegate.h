//
//  HighchartsObjCAppDelegate.h
//  HighchartsObjC
//
//  Created by Tomasz Janeczko on 11-08-05.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HighchartsObjCViewController;

@interface HighchartsObjCAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet HighchartsObjCViewController *viewController;

@end
