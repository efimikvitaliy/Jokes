//
//  Jokes.h
//  Kontr
//
//  Created by efimikvitaliy on 29.10.15.
//  Copyright (c) 2015 DreamTeam. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Jokes : NSObject

- (id) init;
- (void) putJoke: (NSString * ) joke;
- (NSString *) getJokeAtIndex: (int) index;
- (NSUInteger)getSize;

@end
