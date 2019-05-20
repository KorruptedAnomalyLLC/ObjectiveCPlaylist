//
//  AJWPlaylist.m
//  OBJCPlaylist
//
//  Created by Austin West on 5/20/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

#import "AJWPlaylist.h"

@interface AJWPlaylist()

@property (nonatomic, strong) NSMutableArray* internalSongs;

@end

@implementation AJWPlaylist

- (instancetype) initWithName:(NSString *)name song:(NSArray *)songs
{
    self = [super init];
    if (self)
    {
        _name = name;
        _internalSongs = [songs mutableCopy];
    }
    return self;
}

// MARK: Methods
-(void) addSongsObject:(AJWSong *)object
{
    [self.internalSongs addObject:object];
}

-(void) removeSongsObject:(AJWSong *)object
{
    [self.internalSongs removeObject:object];
}

- (NSArray *) songs
{
    return self.internalSongs;
}

// let newPlaylist = AJWPlaylist(name: "Betterest", songs: [Song1, Song2, Song3})
// newPlaylist.songs
@end
