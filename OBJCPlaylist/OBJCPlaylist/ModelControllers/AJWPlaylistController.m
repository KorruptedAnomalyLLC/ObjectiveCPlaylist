//
//  AJWPlaylistController.m
//  OBJCPlaylist
//
//  Created by Austin West on 5/20/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

#import "AJWPlaylistController.h"

@interface AJWPlaylistController()

@property (nonatomic, strong, readwrite) NSMutableArray* internalPlaylists;

@end

@implementation AJWPlaylistController

+ (AJWPlaylistController*) sharedController
{
    static AJWPlaylistController *sharedController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedController = [AJWPlaylistController new];
    });
    return sharedController;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalPlaylists = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createPlaylistWithName:(NSString *)name
{
    AJWPlaylist *newPlaylist = [[AJWPlaylist alloc] initWithName:name
                                                           songs: [NSMutableArray new]];
    [self.internalPlaylists addObject:newPlaylist];
}

- (void)deletePlaylist:(AJWPlaylist *)playlist
{
    [self.internalPlaylists removeObject:playlist];
}

- (void)addSongWithTitle:(NSString *)title andArtist:(NSString *)artist toPlaylist:(AJWPlaylist *)playlist
{
    AJWSong *newSong = [[AJWSong alloc] initWithTitle:title artist:artist];
    [playlist addSongsObject:newSong];
}

- (void)removeSong:(AJWSong *)song fromPlaylist:(AJWPlaylist *)playlist
{
    [playlist removeSongsObject:song];
}

@end
