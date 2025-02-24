//
//  AppDelegate.m
//  Base64
//
//  Created by Jaseem V V on 29/04/17.
//  Copyright © 2017 Jaseem V V. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

AboutWindowController *aboutWindowCtrlr;

#pragma mark - Lifecycle

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [aboutMenuItem setAction:@selector(handleAboutMenu:)];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
}

#pragma mark - Handlers

- (void)handleAboutMenu:(id)sender {
    NSLog(@"about invoked");
    aboutWindowCtrlr = [[AboutWindowController alloc] initWithWindowNibName:@"AboutWindow"];
    [aboutWindowCtrlr showWindow:nil];
}


@end
