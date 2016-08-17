//
//  main.m
//  Classes and Subclasses
//
//  Created by Andrew Barber on 8/17/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Novice.h"
#import "Thief.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Thief *person = [[Thief alloc] initWithName:@"Joey"
                                               galaxy:@"Andromeda"];
        NSLog(@"Hi, my name is %@", person);
        NSLog(@"I am from the galaxy %@", [person galaxy]);
        
    }
    return 0;
}
