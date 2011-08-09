//
//  HighChartsPieOptions.h
//  HighchartsObjC
//
//  Created by Tomasz Janeczko on 11-08-08.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PieChartSection.h"


@interface HighChartsPieOptions : NSObject {
    NSMutableArray *sectionsArray;
    NSString *chartTitle;
}

- (id)initWithArray:(NSArray*)array;
- (id)init;

@property (nonatomic, retain) NSMutableArray *sectionsArray;
@property (nonatomic, retain) NSString *chartTitle;

- (NSString *)getSectionsArrayAsJSString;
- (void)addObject:(id<PieChartSection>) object;

@end
