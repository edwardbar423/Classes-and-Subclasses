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

int action = -1;
int hp = 10;

void dungeon();




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    
    NSNumber *gen = @(arc4random_uniform(5));
    NSNumber *health = [NSNumber numberWithInt:hp];
    
    
    Character *foo = [[Character alloc] initWithName:@"Mick"];
    [foo setHitPoints:health];
    
    NSLog(@"Welcome %@. You've come seeking an adventure.", foo);
    NSLog(@"The mysterious voice echos as the tomb shuts behind you.");
    NSLog(@"Walking further in you enter a room with two switches on the wall");
    NSLog(@"What do you do?");
    NSLog(@"0: Left Switch\n1: Right Switch\n");
    scanf("%d", &action);
        
    switch (action) {
        case 0:
            NSLog(@"A trap is sprung!");
            NSLog(@"You take %@ damage!", gen);
            int newHP = [health intValue] - [gen intValue];
            [foo setHitPoints:[NSNumber numberWithInt:newHP]];
            NSLog(@"You now have %@ health.", [foo hitPoints]);
            
            break;
            
        case 1:
            NSLog(@"A slot opens up in the wall, revealing a wand.");
            [[foo items] addObject:@"Wand"];
            NSLog(@"Your inventory is: %@", [foo items]);
            
        default:
            NSLog(@"You may now exit the dungeon.");
            break;
    }
    return 0;
}



       /*
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
       */
        
        
        
}
