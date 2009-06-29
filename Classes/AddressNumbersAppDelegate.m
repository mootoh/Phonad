//
//  AddressNumbersAppDelegate.m
//  AddressNumbers
//
//  Created by mootoh on 6/28/09.
//  Copyright deadbeaf.org 2009. All rights reserved.
//

#import "AddressNumbersAppDelegate.h"
#import "RootViewController.h"
#import "Database.h"

@implementation AddressNumbersAppDelegate

@synthesize window;
@synthesize rootViewController;
@synthesize db;

#pragma mark -
#pragma mark Application lifecycle

- (void)applicationDidFinishLaunching:(UIApplication *)application
{
   db = [[Database alloc] init];
   [db prepare];
   rootViewController.db = db;
	[window addSubview:rootViewController.view];
   [window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc
{
   [db release];
	[rootViewController release];
	[window release];
	[super dealloc];
}

@end