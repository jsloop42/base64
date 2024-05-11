//
//  Base64Tests.m
//  Base64Tests
//
//  Created by Jaseem V V on 29/04/17.
//  Copyright © 2017 Jaseem V V. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Base64.h"

@interface Base64Tests : XCTestCase

@end

@implementation Base64Tests
Base64 *base64;

- (void)setUp {
    NSLog(@"running %s", __PRETTY_FUNCTION__);
    [super setUp];
    base64 = [[Base64 alloc] init];
}

- (void)testBase64Encode {
    NSLog(@"running %s", __PRETTY_FUNCTION__);
    NSString *expected = @"YmVhdXRpZnVsIG5vdw==";
    NSString *encodedText = [base64 encode:@"beautiful now"];
    XCTAssertEqualObjects(expected, encodedText);
}

- (void)testBase64Decode {
    NSLog(@"running %s", __PRETTY_FUNCTION__);
    NSString *expected = @"beautiful now";
    NSString *decodedText = [base64 decode:@"YmVhdXRpZnVsIG5vdw=="];
    XCTAssertEqualObjects(expected, decodedText);
}

- (void)testPerformanceBase64Encode {
    NSLog(@"running %s", __PRETTY_FUNCTION__);
    [self measureBlock:^{
        [base64 encode:@"beautiful now"];
    }];
}

- (void)testPerformanceBase64Decode {
    NSLog(@"running %s", __PRETTY_FUNCTION__);
    [self measureBlock:^{
        [base64 decode:@"YmVhdXRpZnVsIG5vdw=="];
    }];
}

@end
