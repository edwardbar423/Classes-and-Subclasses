//
//  Thief.h
//  Classes and Subclasses
//
//  Created by Andrew Barber on 8/17/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import "Character.h"

@interface Human : Character {

    NSString *_home;
    
}

-(instancetype)initWithName:(NSString *)name home:(NSString *)home;

-(NSString *)home;

@end
