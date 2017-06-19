//
//  Base64.m
//  Base64
//
//  Created by Jaseem V V on 29/04/17.
//  Copyright © 2017 qlambda.com. All rights reserved.
//

#import "Base64.h"

@implementation Base64

- (NSString *)encode:(NSString *)plainText {
    NSString *encodedText = @"";
    @try {
        NSLog(@"Encode called with %@", plainText);
        NSData *plainData = [plainText dataUsingEncoding:NSUTF8StringEncoding];
        encodedText = [plainData base64EncodedStringWithOptions:0];
        NSLog(@"Encoded string: %@", encodedText);
    } @catch (NSException *exception) {
        NSLog(@"Exception encoding: %@", exception);
    }
    return encodedText;
}

-(NSString *)decode:(NSString *)encodedText {
    NSString *decodedString = @"";
    @try {
        NSLog(@"Decode called with %@", encodedText);
        NSData *decodedData = [[NSData alloc] initWithBase64EncodedString:encodedText options:0];
        decodedString = [[NSString alloc] initWithData:decodedData encoding:NSUTF8StringEncoding];
        NSLog(@"Decoded string: %@", decodedString);
    } @catch (NSException *exception) {
        NSLog(@"Exception decoding: %@", exception);
    }
    return decodedString;
}

@end
