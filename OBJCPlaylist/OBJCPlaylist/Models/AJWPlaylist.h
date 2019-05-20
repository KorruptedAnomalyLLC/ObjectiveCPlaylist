//
//  AJWPlaylist.h
//  OBJCPlaylist
//
//  Created by Austin West on 5/20/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AJWSong;

NS_ASSUME_NONNULL_BEGIN

@interface AJWPlaylist : NSObject

@property (nonatomic, copy) NSString* name;
@property (nonatomic, strong, readonly) NSArray* songs;

- (instancetype) initWithName:(NSString*)name song:(NSArray*)songs;

-(void) addSongsObject:(AJWSong *)object;
-(void) removeSongsObject:(AJWSong  *)object;

@end

NS_ASSUME_NONNULL_END
