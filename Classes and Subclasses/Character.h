//
//  Novice.h
//  Classes and Subclasses
//
//  Created by Andrew Barber on 8/17/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Character : NSObject {
    
    NSString *_name;
}

@property NSNumber *hitPoints;
@property NSMutableArray *items;

-(instancetype)initWithName:(NSString*)name;

-(NSString*)name;

@end
