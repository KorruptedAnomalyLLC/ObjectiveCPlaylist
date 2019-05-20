//
//  AJWTableListTableViewController.m
//  OBJCPlaylist
//
//  Created by Austin West on 5/20/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

#import "AJWTableListTableViewController.h"
#import "AJWPlaylistController.h"
#import "AJWTDetailableViewController.h"

@interface AJWTableListTableViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation AJWTableListTableViewController

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}


- (IBAction)addButtonTapped:(UIBarButtonItem *)sender {
[[AJWPlaylistController sharedController] createPlaylistWithName:self.nameTextField.text];
    
    [self.tableView reloadData];
    self.nameTextField.text = @"";
}


#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[AJWPlaylistController sharedController] playlists] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"playlistCell" forIndexPath:indexPath];
    
    AJWPlaylist *playlist = [[[AJWPlaylistController sharedController] playlists] objectAtIndex:indexPath.row];
    
   cell.textLabel.text = [playlist name];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu songs", playlist.songs.count ];
    
    return cell;
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        
    }
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"toDetailVC"]) {
        NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
        AJWTDetailableViewController *destinationVC = [segue destinationViewController];
        AJWPlaylist *playlist = [[[AJWPlaylistController sharedController] playlists] objectAtIndex:indexPath.row];
        destinationVC.playlist = playlist;
    }
}


@end
