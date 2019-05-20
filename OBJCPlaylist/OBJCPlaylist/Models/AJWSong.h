//
//  AJWSong.h
//  OBJCPlaylist
//
//  Created by Austin West on 5/20/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AJWSong : NSObject

// * means pointer
@property (nonatomic, copy) NSString* title;
@property (nonatomic, copy) NSString* artist;

// - means non static /instance method
// init(title: String, artist: String)        -Swift example-
- (instancetype) initWithTitle:(NSString*)title artist: (NSString*)artist;


@end

NS_ASSUME_NONNULL_END
