//
//  AIInterstitialTest.m
//  Static Swizzle
//
//  Created by Ali Karagoz on 04/09/14.
//
//

#import "AIInterstitialTest.h"

#import "GADInterstitial.h"

@interface AIInterstitialTest ()

@property (nonatomic, strong) GADInterstitial *interstitial;

@end

@implementation AIInterstitialTest

- (void)createInterstitial {
    
    self.interstitial = [[GADInterstitial alloc] init];
    NSLog(@"%s Interstitial Class : %@", __PRETTY_FUNCTION__, self.interstitial.class);
}

@end
