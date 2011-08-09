//
//  HighChartsPieOptions.m
//  HighchartsObjC
//
//  Created by Tomasz Janeczko on 11-08-08.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HighChartsPieOptions.h"
#import "HighchartsHelper.h"

@implementation HighChartsPieOptions
@synthesize sectionsArray, chartTitle;

- (id)init {
    self = [super init];
    if (self) {
        self.sectionsArray = [NSMutableArray array];
    }
    
    return self;
}

- (id)initWithArray:(NSArray *)array {
    self = [super init];
    if (self) {
        self.sectionsArray = [NSMutableArray arrayWithArray:array];
    }
    
    return self;
}

- (NSString *)getSectionsArrayAsJSString {
    NSString *output = @"[";
    int count = 0;
    for (id<PieChartSection> section in self.sectionsArray) {
        output = [output stringByAppendingFormat:@"{name: %@, y: %@, color: '%@'}", [HighchartsHelper getJSString:section.name], [HighchartsHelper getJSString:section.value], [HighchartsHelper getJSStringWithUIColor:section.color]];
        
        if (count < [self.sectionsArray count] - 1) {
            output = [output stringByAppendingString:@", "];
        }
        
        count++;
    }
    
    output = [output stringByAppendingString:@"]"];
    
    return output;
}

- (void)addObject:(id<PieChartSection>)object {
    [self.sectionsArray addObject:object];
}

@end
