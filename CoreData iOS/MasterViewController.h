//
//  MasterViewController.h
//  CoreData iOS
//
//  Created by Ryohei Miura on 2014/04/06.
//  Copyright (c) 2014年 Ryohei Miura. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
