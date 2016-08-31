//
//  Chaser.m
//  Classes and Subclasses
//
//  Created by Andrew Barber on 8/17/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import "Thief.h"

@implementation Thief

-(instancetype)initWithName:(NSString *)name home:(NSString *)home ability:(NSString *)ability {
    self = [super initWithName:name home:home];
    if (self) {
        _ability = ability;
}
    return self;
}

-(NSString*)ability {
    return _ability;
}



@end
