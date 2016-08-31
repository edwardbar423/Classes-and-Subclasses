//
//  Chaser.h
//  Classes and Subclasses
//
//  Created by Andrew Barber on 8/30/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Thief.h"

@interface Chaser : Thief {
    
    NSString *_equipment;
    
}

-(instancetype)initWithName:(NSString *)name home:(NSString *)home ability:(NSString *)ability equipment:(NSString *)equipment;

-(NSString*)equipment;


@end
