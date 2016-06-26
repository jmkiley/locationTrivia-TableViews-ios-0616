//
//  FISTriviaTableViewController.m
//  locationTrivia-tableviews
//
//  Created by Jordan Kiley on 6/25/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISTriviaTableViewController.h"

@interface FISTriviaTableViewController ()

@end
@implementation FISTriviaTableViewController

- (void)viewDidLoad {
    [ super viewDidLoad];
    
    self.tableView.accessibilityLabel = @"Trivia Table";
    self.tableView.accessibilityIdentifier = @"Trivia Table";

}
- (void)didReceiveMemoryWarning {
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.trivia.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [ tableView dequeueReusableCellWithIdentifier:@"triviaCell"];
    FISTrivium *trivia = self.trivia[indexPath.row];
    cell.textLabel.text = trivia.content;
    return cell;
}

@end
