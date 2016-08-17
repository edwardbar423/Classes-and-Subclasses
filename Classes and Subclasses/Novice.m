//
//  Novice.m
//  Classes and Subclasses
//
//  Created by Andrew Barber on 8/17/16.
//  Copyright © 2016 Invictus. All rights reserved.
//
#import "Thief.h"

@implementation Novice

-(instancetype)init {
    return[self initWithName:@"Unnamed"];
}

-(instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    
    return self;
}

-(NSString*)name {
    return _name;
}

-(NSString*)description {
    return _name;
}

@end
