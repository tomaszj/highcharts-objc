//
//  ExamplePieSection.m
//  HighchartsObjC
//
//  Created by Tomasz Janeczko on 11-08-08.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ExamplePieSection.h"


@implementation ExamplePieSection
@synthesize name=_name, value=_value, color=_color;

+ (id)pieSectionWithName:(NSString *)name andValue:(NSNumber*)value andColor:(UIColor*)color {
    return [[[self alloc] initWithName:name andValue:value andColor:color] autorelease];
}

- (id)initWithName:(NSString *)name andValue:(NSNumber*)value andColor:(UIColor*)color {
    self = [super init];
    if (self) {
        _name = [name retain];
        _value = [value retain];
        _color = [color retain];
    }
    
    return self;
}

- (void)dealloc {
    [_name release];
    [_value release];
    [_color release];
    [super dealloc];
}

@end
