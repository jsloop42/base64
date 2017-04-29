//
//  Base64.h
//  Base64
//
//  Created by kadaj on 29/04/17.
//  Copyright © 2017 int3h.xyz. All rights reserved.
//

#import <Foundation/Foundation.h>

#ifdef DEBUG
    #define NSLog(...) NSLog(__VA_ARGS__)
#else
    #define NSLog(...) (void)0
#endif

@interface Base64 : NSObject

/** Encode a given plain text string */
- (NSString *)encode:(NSString *)plainText;

/** Decode a base64 encoded string */
- (NSString *)decode:(NSString *)encodedText;

@end
