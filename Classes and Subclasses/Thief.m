//
//  Thief.m
//  Classes and Subclasses
//
//  Created by Andrew Barber on 8/17/16.
//  Copyright © 2016 Invictus. All rights reserved.
//
#import "Thief.h"

@implementation Thief

-(instancetype)initWithName:(NSString *)name
                     galaxy:(NSString *)galaxy {
    self = [super initWithName:name];
    if (self) {
        _galaxy = galaxy;
    }
    
    return self;
}

-(instancetype)initWithName:(NSString *)name {
    return [self initWithName:name
                       galaxy:@"Unknown"];
    
}

-(NSString*)galaxy {
    return _galaxy;
    
}

@end
