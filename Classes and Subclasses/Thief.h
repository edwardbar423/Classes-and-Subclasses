//
//  Chaser.h
//  Classes and Subclasses
//
//  Created by Andrew Barber on 8/17/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import "Human.h"

@interface Thief : Human {
    
    NSString * _ability;
    
    
}

-(instancetype)initWithName:(NSString *)name home:(NSString *)home
                     ability:(NSString *)ability NS_DESIGNATED_INITIALIZER;

-(NSString *)ability;

@end
