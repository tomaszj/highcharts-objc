//
//  DatePoint.m
//  HighchartsObjC
//
//  Created by Tomasz Janeczko on 11-08-19.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "DatePoint.h"


@implementation DatePoint
@synthesize date, value;

+ (id) datePointWithDate:(NSDate *)theDate andValue:(NSNumber *)theValue {
    DatePoint *point = [[DatePoint alloc] init];
    point.date = theDate;
    point.value = theValue;
    return [point autorelease];
}

@end
