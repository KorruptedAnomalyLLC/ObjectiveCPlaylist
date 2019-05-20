//
//  AJWTDetailableViewController.h
//  OBJCPlaylist
//
//  Created by Austin West on 5/20/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AJWPlaylist;

NS_ASSUME_NONNULL_BEGIN

@interface AJWTDetailableViewController : UITableViewController

@property (nonatomic, strong) AJWPlaylist *playlist;

@end

NS_ASSUME_NONNULL_END
