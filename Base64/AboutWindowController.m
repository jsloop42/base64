//
//  AboutWindowController.m
//  Base64
//
//  Created by kadaj on 30/04/17.
//  Copyright © 2017 int3h.xyz. All rights reserved.
//

#import "AboutWindowController.h"

@interface AboutWindowController ()

@end

@implementation AboutWindowController

@synthesize appWithVersion;
@synthesize appWebsite;

- (void)windowDidLoad {
    [super windowDidLoad];
    NSDictionary<NSString *, id> *bundlePlist = [[NSBundle mainBundle] infoDictionary];
    NSString *version = [bundlePlist objectForKey:@"CFBundleShortVersionString"];
    NSString *build = [bundlePlist objectForKey:(NSString *)kCFBundleVersionKey];
    NSString *appName = [bundlePlist objectForKey:(NSString *)kCFBundleExecutableKey];
    NSLog(@"meta: %@ - %@ - %@", version, build, appName);
    [appWithVersion setStringValue:[NSString stringWithFormat:@"%@ v%@", appName, version]];
    [appWebsite setStringValue:WEBSITE];
}

@end
