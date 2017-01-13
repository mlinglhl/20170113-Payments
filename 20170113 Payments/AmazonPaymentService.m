//
//  AmazonPaymentService.m
//  20170113 Payments
//
//  Created by Minhung Ling on 2017-01-13.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void) processPaymentAmount: (NSInteger) cost {
    
}

- (BOOL) canProcessPaymentAmount {
    NSInteger available = arc4random_uniform(2);
    if (available == 1) {
        return YES;
    }
    else {
        return NO;
    }
}

@end
