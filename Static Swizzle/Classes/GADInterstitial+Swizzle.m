//
//  GADInterstitial+Swizzle.m
//  Static Swizzle
//
//  Created by Ali Karagoz on 04/09/14.
//
//

#import "GADInterstitial+Swizzle.h"
#import <objc/runtime.h>

@implementation GADInterstitial (Swizzle)

+ (void)load {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        
        SEL originalSelector = @selector(init);
        SEL swizzledSelector = @selector(swizzle_init);
        
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
        
        BOOL didAddMethod = class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
        
        if (didAddMethod) {
            class_replaceMethod(class, swizzledSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
        } else {
            method_exchangeImplementations(originalMethod, swizzledMethod);
        }
    });
    
}

- (id)swizzle_init {
    return [(GADInterstitial *)[NSObject alloc] init];
}


@end
