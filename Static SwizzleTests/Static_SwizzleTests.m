//
//  Static_SwizzleTests.m
//  Static SwizzleTests
//
//  Created by Ali Karagoz on 04/09/14.
//
//

#import <XCTest/XCTest.h>

#import "GADInterstitial+Swizzle.h"
#import "AIInterstitialTest.h"

@interface Static_SwizzleTests : XCTestCase

@property (nonatomic, strong) AIInterstitialTest *tester;

@end

@implementation Static_SwizzleTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testSwizzeling {
    
    self.tester = [[AIInterstitialTest alloc] init];
    [self.tester createInterstitial];
    
//    self.interstitial = [[GADInterstitial alloc] init];
//    NSLog(@"%s Interstitial Class : %@", __PRETTY_FUNCTION__, self.interstitial.class);
//    XCTAssert([self.interstitial isMemberOfClass:NSObject.class], @"Should be an instance of NSObject instead of GADInterstitial");
}

@end
