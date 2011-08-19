//
//  HighstockOptions.m
//  HighchartsObjC
//
//  Created by Tomasz Janeczko on 11-08-10.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HighstockOptions.h"
#import "DatePoint.h"


@implementation HighstockOptions
@synthesize datePoints;
@synthesize title;
@synthesize axisTitle;

- (id)init {
    self = [super init];
    if (self) {
        self.datePoints = [NSMutableArray array];
    }
    return self;
}

- (void)dealloc {
    self.datePoints = nil;
    [super dealloc];
}

- (NSString *)getSeriesString {
    NSMutableString *string = [[[NSMutableString alloc] init] autorelease];
    [string appendString:@"["];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy,MM,dd"];
    for (DatePoint *point in self.datePoints) {
        [string appendFormat:@"[Date.UTC(%@),%@]", [dateFormatter stringFromDate:point.date], point.value];
        if ([self.datePoints indexOfObject:point] != [self.datePoints count] - 1) {
            [string appendString:@", "];
        }
    }
    
    [string appendString:@"]"];
    
    return [NSString stringWithString:string];
}

- (void)addDatePoint:(DatePoint*)datePoint {
    [self.datePoints addObject:datePoint];
}

 

@end
