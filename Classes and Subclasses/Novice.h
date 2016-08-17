//
//  Novice.h
//  Classes and Subclasses
//
//  Created by Andrew Barber on 8/17/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Novice : NSObject {
    
        NSString* _name;
    
}

-(instancetype)initWithName:(NSString*)name NS_DESIGNATED_INITIALIZER;
-(NSString*)name;

@end
