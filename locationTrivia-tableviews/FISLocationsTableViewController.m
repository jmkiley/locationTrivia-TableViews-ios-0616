//
//  FISLocationsTableViewController.m
//  locationTrivia-tableviews
//
//  Created by Jordan Kiley on 6/24/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISLocationsTableViewController.h"

@implementation FISLocationsTableViewController

- (void)viewDidLoad {
    self.tableView.accessibilityLabel = @"Locations Table";
    self.tableView.accessibilityIdentifier = @"Locations Table";

}


- (void)didReceiveMemoryWarning {
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [ self.locations count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [ tableView dequeueReusableCellWithIdentifier:@"textLabel"];
    
    FISLocation *locationLocation = self.locations[indexPath.row];
    cell.textLabel.text = locationLocation.name ;
    cell.detailTextLabel.text = [ NSString stringWithFormat:@"%lu", [locationLocation.trivia count]];
    self.locationsTrivia = locationLocation.trivia ;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
        NSUInteger index = self.tableView.indexPathForSelectedRow.row;
        FISTriviaTableViewController *triviaDetailDestination = (FISTriviaTableViewController *)segue.destinationViewController ;
    FISLocation *triviaLocation = [self.locations objectAtIndex:index] ;
        triviaDetailDestination.trivia = triviaLocation.trivia ;
    
}
@end
