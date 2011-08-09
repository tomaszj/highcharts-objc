//
//  HighchartsOptions.m
//  HighchartsObjC
//
//  Created by Tomasz Janeczko on 11-08-05.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HighchartsXYOptions.h"


@implementation HighchartsXYOptions
@synthesize xValues, yValues, chartTitle, yAxisTitle;

- (id)initWithTitle:(NSString*)aChartTitle andXValues:(NSArray*)theXValues andYValues:(NSArray*)theYValues {
    self = [super init];
    if (self) {
        self.chartTitle = aChartTitle;
        self.xValues = theXValues;
        self.yValues = theYValues;
    }
    
    return self;
}

- (void)dealloc {
    self.xValues = nil;
    self.yValues = nil;
    self.chartTitle = nil;
    [super dealloc];
}

@end
