//
//  ViewController.m
//  Base64
//
//  Created by Jaseem V V on 29/04/17.
//  Copyright © 2017 qlambda.com. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

Base64 *base64;

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    base64 = [[Base64 alloc] init];
    [self setTextFieldAttributes];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];
}

#pragma mark - UI Styles

- (void)setTextFieldAttributes {
    NSFont *mono = [NSFont fontWithName:@"Monaco" size:12];
    encodeInput.font = mono;
    encodeOutput.font = mono;
    decodeInput.font = mono;
    decodeOutput.font = mono;
}

#pragma mark - Delegates

- (void)textDidChange:(NSNotification *)notification {
    NSTextView *textView = [notification object];
    NSString *textViewId = [textView identifier];
    if ([textViewId isEqualToString:@"encodeInput"]) {
        NSLog(@"id: %@", textViewId);
        NSLog(@"encode input: %@", [textView string]);
        encodeOutput.string = [base64 encode:[textView string]];
    } else if ([textViewId isEqualToString:@"decodeInput"]) {
        NSLog(@"id: %@", textViewId);
        NSLog(@"decode input: %@", [textView string]);
        decodeOutput.string = [base64 decode:[textView string]];
    }
}

@end
