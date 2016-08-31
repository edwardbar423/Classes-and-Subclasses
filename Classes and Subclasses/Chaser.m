//
//  Chaser.m
//  Classes and Subclasses
//
//  Created by Andrew Barber on 8/30/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import "Chaser.h"

@implementation Chaser

-(instancetype)initWithName:(NSString *)name home:(NSString *)home ability:(NSString *)ability equipment:(NSString *)equipment {
    
    self = [super initWithName:name home:home ability:ability];
    if (self) {
        _equipment = equipment;
    }
    return self;
}

-(NSString*)equipment {
    return _equipment;
}

@end
