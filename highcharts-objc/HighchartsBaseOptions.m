//
//  HighchartsBaseOptions.m
//  HighchartsObjC
//
//  Created by Tomasz Janeczko on 11-08-22.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HighchartsBaseOptions.h"


@implementation HighchartsBaseOptions
@synthesize backgroundColor;

- (id)init {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    
    return self;
}

@end
