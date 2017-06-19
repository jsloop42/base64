//
//  AboutWindowController.h
//  Base64
//
//  Created by Jaseem V V on 30/04/17.
//  Copyright © 2017 qlambda.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#define WEBSITE @"http://int3h.xyz"

@interface AboutWindowController : NSWindowController

@property (weak, nonatomic) IBOutlet NSTextField *appWithVersion;
@property (weak, nonatomic) IBOutlet NSTextField *appWebsite;
    
@end
