//
//  main.m
//  Classes and Subclasses
//
//  Created by Andrew Barber on 8/17/16.
//  Copyright © 2016 Invictus. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "Human.h"
#import "Thief.h"
#import "Chaser.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        Character *foo = [[Character alloc] initWithName:@"Clairiese"];
        Human *boilsWorth = [[Human alloc] initWithName:@"Hannible" home:@"Midtown"];
        Thief *person = [[Thief alloc] initWithName:@"Justin" home:@"Jersey" ability:@"Sprint"];
        Chaser *barker = [[Chaser alloc] initWithName:@"Mick" home:@"Malt" ability:@"Heavy Sneezing" equipment:@"Grapple Gun"];
        
        NSLog(@"I'm a proud woman named %@", foo);
        
        NSLog(@"Everyone knows to have a little fear in me %@", boilsWorth);
        NSLog(@"Despite appearances I'm only from %@", [boilsWorth home]);
        
        NSLog(@"Hi, my name is %@", person);
        NSLog(@"I am from the %@", [person home]);
        NSLog(@"My job is to find you so. %@", [person ability]);
        
        NSLog(@"They call me %@. I'm from a ghetto named %@, I like it though. Sometimes, I like to catch people with %@, they always catch cold afterward. When I'm in a tight spot I'll get into or out of trouble with my %@. Don't mess with THE MICK.", barker, [barker  home], [barker ability], [barker equipment]);
        
    }
    return 0;
}
