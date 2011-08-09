//
//  HighchartsObjCViewController.h
//  HighchartsObjC
//
//  Created by Tomasz Janeczko on 11-08-05.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HighchartsObjCViewController : UIViewController <UIWebViewDelegate> {
    UIWebView *_webView;
}

@property (nonatomic, retain) IBOutlet UIWebView *webView;

@end
