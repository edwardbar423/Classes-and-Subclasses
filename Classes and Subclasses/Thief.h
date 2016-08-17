//
//  Thief.h
//  Classes and Subclasses
//
//  Created by Andrew Barber on 8/17/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Novice.h"

@interface Thief : Novice {

    NSString * _galaxy;
    
}

-(instancetype)initWithName:(NSString *)name
                     galaxy:(NSString *)galaxy NS_DESIGNATED_INITIALIZER;

-(NSString *)galaxy;

@end
