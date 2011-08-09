//
//  PieChartSection.h
//  HighchartsObjC
//
//  Created by Tomasz Janeczko on 11-08-08.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol PieChartSection <NSObject>

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) NSNumber *value;
@property (nonatomic, readonly) UIColor *color;

@end
