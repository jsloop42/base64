//
//  ViewController.h
//  Base64
//
//  Created by Jaseem V V on 29/04/17.
//  Copyright © 2017 qlambda.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Base64.h"

@interface ViewController : NSViewController<NSTextViewDelegate, NSTextFieldDelegate> {
    IBOutlet NSTextView *encodeInput;
    IBOutlet NSTextView *encodeOutput;
    IBOutlet NSTextView *decodeInput;
    IBOutlet NSTextView *decodeOutput;
}

@end
