//
//  Jokes.m
//  Kontr
//
//  Created by efimikvitaliy on 29.10.15.
//  Copyright (c) 2015 DreamTeam. All rights reserved.
//

#import "Jokes.h"

@implementation Jokes{
    NSMutableArray* _jokes;
}

- (id) init {
    _jokes = [[NSMutableArray alloc] init];
    return self;
}
- (void) putJoke: (NSString * ) joke{
    [_jokes addObject:joke];
}
- (NSString *) getJokeAtIndex: (int) index{
    return [_jokes objectAtIndex:index];
}

-(NSUInteger)getSize{
    return [_jokes count];
}

@end
