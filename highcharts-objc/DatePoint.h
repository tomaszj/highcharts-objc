//
//  DatePoint.h
//  HighchartsObjC
//
//  Created by Tomasz Janeczko on 11-08-19.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DatePoint : NSObject {
    NSDate *date;
    NSNumber *value;
}

@property (nonatomic, retain) NSDate *date;
@property (nonatomic, retain) NSNumber *value;

+ (id) datePointWithDate:(NSDate *)theDate andValue:(NSNumber *)theValue;

@end
