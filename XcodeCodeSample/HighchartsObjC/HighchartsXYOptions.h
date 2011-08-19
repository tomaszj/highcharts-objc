//
//  HighchartsOptions.h
//  HighchartsObjC
//
//  Created by Tomasz Janeczko on 11-08-05.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OptionsWithSeries.h"

// Class, which holds all data needed to render a line chart. This includes mandatory objects such as:
// xValues - array of NSNumbers representing data X values
// yValues - array of NSNumbers representing data Y values
// *** Both xValues and yValues must have the same length! ***
// chartTitle - title of whole chart, used at the top
// yAxisTitle (optional) - title of y axis. If nil or empty, it will be hidden
@interface HighchartsXYOptions : NSObject <OptionsWithSeries> {
    NSArray *xValues;
    NSArray *yValues;
    NSString *chartTitle;
    NSString *yAxisTitle;
}
- (id)initWithTitle:(NSString*)aChartTitle andXValues:(NSArray*)theXValues andYValues:(NSArray*)theYValues;

@property (nonatomic, retain) NSArray *xValues;
@property (nonatomic, retain) NSArray *yValues;
@property (nonatomic, retain) NSString *chartTitle;
@property (nonatomic, retain) NSString *yAxisTitle;

@end
