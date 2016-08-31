//
//  Novice.m
//  Classes and Subclasses
//
//  Created by Andrew Barber on 8/17/16.
//  Copyright © 2016 Invictus. All rights reserved.
//


#import "Character.h"

@implementation Character


-(instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
        _items = [[NSMutableArray alloc] init];
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
