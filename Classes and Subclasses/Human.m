//
//  Thief.m
//  Classes and Subclasses
//
//  Created by Andrew Barber on 8/17/16.
//  Copyright © 2016 Invictus. All rights reserved.
//
#import "Human.h"

@implementation Human

-(instancetype)initWithName:(NSString *)name home:(NSString *)home {
    self = [super initWithName:name];
    if (self) {
        _home = home;
    }
    
    return self;
}

-(NSString*)home {
    return _home;
}

@end
