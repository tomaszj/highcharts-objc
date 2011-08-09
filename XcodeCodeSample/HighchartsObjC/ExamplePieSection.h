//
//  ExamplePieSection.h
//  HighchartsObjC
//
//  Created by Tomasz Janeczko on 11-08-08.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PieChartSection.h"

@interface ExamplePieSection : NSObject <PieChartSection> {
    NSString *_name;
    NSNumber *_value;
    UIColor *_color;
}

+ (id)pieSectionWithName:(NSString *)name andValue:(NSNumber*)value andColor:(UIColor*)color;
- (id)initWithName:(NSString *)name andValue:(NSNumber*)value andColor:(UIColor*)color;

@end
