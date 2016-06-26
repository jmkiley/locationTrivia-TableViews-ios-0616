//
//  FISLocationsTableViewController.h
//  locationTrivia-tableviews
//
//  Created by Jordan Kiley on 6/24/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISLocation.h"
#import "FISTriviaTableViewController.h"
#import "FISTrivium.h"

@interface FISLocationsTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *locations ;
@property (nonatomic, strong) NSArray *locationsTrivia ;
@end
