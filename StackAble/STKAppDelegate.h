//
//  STKAppDelegate.h
//  StackAble
//
//  Created by Robert Widmann on 6/18/13.
//  Copyright (c) 2013 CodaFi. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class STKMainWindowController;

@interface STKAppDelegate : NSObject <NSApplicationDelegate>

@property (nonatomic, strong) STKMainWindowController *mainWindowController;

@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (IBAction)saveAction:(id)sender;
- (NSManagedObjectContext *)backgroundContext;

@end
