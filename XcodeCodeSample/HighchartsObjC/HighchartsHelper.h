//
//  HighchartsHelper.h
//  HighchartsObjC
//
//  Created by Tomasz Janeczko on 11-08-05.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OptionsWithSeries.h"

@class HighchartsXYOptions;
@class HighChartsPieOptions;
@class HighstockOptions;

@interface HighchartsHelper : NSObject {
    
}
+ (void)createPieChartInWebView:(UIWebView*)webView withOptions:(HighChartsPieOptions*)options;
+ (void)createLineChartInWebView:(UIWebView*)webView withOptions:(HighchartsXYOptions*)options;
+ (void)createStockChartInWebView:(UIWebView*)webView withOptions:(HighstockOptions*)options;
+ (void)setSeriesInWebView:(UIWebView*)webView withOptions:(id<OptionsWithSeries>) options;
// Helping methods
+ (NSString*)getJSDataPointsWithXValues:(NSArray*)xValues andYValues:(NSArray*)yValues;
+ (NSString*)getJSString:(NSObject*)object;
+ (NSString*)getJSStringWithUIColor:(UIColor*)color;
@end
