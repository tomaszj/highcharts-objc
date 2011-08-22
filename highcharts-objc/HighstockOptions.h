//
//  HighstockOptions.h
//  HighchartsObjC
//
//  Created by Tomasz Janeczko on 11-08-10.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HighchartsBaseOptions.h"
#import "OptionsWithSeries.h"

@class DatePoint;

@interface HighstockOptions : HighchartsBaseOptions <OptionsWithSeries> {
    NSMutableArray *datePoints;
    NSString *title;
    NSString *axisTitle;
}

@property (nonatomic, retain) NSMutableArray *datePoints;
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *axisTitle;

- (void)addDatePoint:(DatePoint*)datePoint;

@end
