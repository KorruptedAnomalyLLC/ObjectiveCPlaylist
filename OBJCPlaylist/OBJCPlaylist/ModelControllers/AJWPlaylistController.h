//
//  AJWPlaylistController.h
//  OBJCPlaylist
//
//  Created by Austin West on 5/20/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AJWPlaylist.h"
#import "AJWSong.h"

NS_ASSUME_NONNULL_BEGIN

@interface AJWPlaylistController : NSObject

@property (nonatomic, strong, readonly) NSArray* playlists;

+ (AJWPlaylistController *) sharedController;

//Create
- (void) createPlaylistWithName:(NSString*)name;

//Delete
- (void) deletePlaylist:(AJWPlaylist*)playlist;

//Add song to a playlist
- (void) addSongWithTitle:(NSString*) title andArtist:(NSString*)artist toPlaylist:(AJWPlaylist*)playlist;

//delete song from playlist
- (void) removeSong:(AJWSong*)song fromPlaylist:(AJWPlaylist*)playlist;

@end

NS_ASSUME_NONNULL_END
