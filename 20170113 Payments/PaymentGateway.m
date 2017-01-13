//
//  PaymentGateway.m
//  20170113 Payments
//
//  Created by Minhung Ling on 2017-01-13.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
- (void) processPaymentAmount: (NSInteger) cost {
    if ([self.delegate canProcessPaymentAmount]) {
        [self.delegate processPaymentAmount:cost];
        NSLog(@"Payment processed amount: %ld", cost);
    }
    else {
        NSLog(@"Sorry your payment cannot be processed.");
    }
}

@end
