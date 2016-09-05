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
        NSNumber *fatal = @(arc4random_uniform(50));
        NSNumber *health = [NSNumber numberWithInt:hp];
        
        Character *advarsary = [[Character alloc] initWithName:@"Large Punk"];
        [advarsary setHitPoints:health];
        
        
        Character *foo = [[Character alloc] initWithName:@"Mick"];
        [foo setHitPoints:health];
        
        NSLog(@"Welcome %@. You've come seeking an adventure.", foo);
        NSLog(@"The mysterious voice echos as the tomb shuts behind you.");
        NSLog(@"Walking further in you enter a room with two switches on the wall");
        NSLog(@"What do you do?");
        NSLog(@"0: Left Switch   1: Right Switch\n");
        scanf("%d", &action);
        
        switch (action) {
            case 0:
                NSLog(@"A trap is sprung!");
                NSLog(@"You take %@ damage!", gen);
                int newHP = [health intValue] - [gen intValue];
                [foo setHitPoints:[NSNumber numberWithInt:newHP]];
                NSLog(@"You now have %@ health.", [foo hitPoints]);
                NSLog(@"A slot opens up on the far end of the wall and a wand is found.");
                [[foo items] addObject:@"Wand"];
                break;
                
            case 1:
                NSLog(@"A slot opens up in the wall, revealing a wand.");
                [[foo items] addObject:@"Wand"];
                NSLog(@"Your inventory is: %@", [foo items]);
                break;
                
            default:
                NSLog(@"Try again.");
                break;
        }
        
        NSLog(@"Congratulations for passing the practice test...");
        NSLog(@"Can you handle the main event?");
        NSLog(@"You are taken into a room with a single opponent with a large weapon.");
        NSLog(@"He approaches you aggressively weilding his large axe.");
        NSLog(@"What do you do?");
        NSLog(@"0: Pull out the wand.\n1: Stand your ground");
        scanf("%d", &action);
        
        switch (action) {
            case 0:
                NSLog(@"You pull out your wand and cast a spell");
                NSLog(@"The creature siezes up and you move in to counter attack it!");
                int advarsaryHP = [health intValue] - [fatal intValue];
                [advarsary setHitPoints:[NSNumber numberWithInt:advarsaryHP]];
                NSLog(@"You strike for an amazing %@ damage!", fatal);
                NSLog(@"You damage the creature. Which now has %@ health", [advarsary hitPoints]);
                break;
                
            case 1:
                NSLog(@"You attempt to stand your ground!");
                NSLog(@"But the creature just rolls over you.");
                NSLog(@"You take %@ damage!", fatal);
                int newHP = [health intValue] - [fatal intValue];
                [foo setHitPoints:[NSNumber numberWithInt:newHP]];
                NSLog(@"You have %@ health.", [foo hitPoints]);
                break;
            default:
                NSLog(@"Try again");
                break;
        }
        
        NSLog(@"Thanks for playing traveler. You may now leave the dungeon.");
        
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
