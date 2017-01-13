//
//  PaymentGatewayDelegate.h
//  20170113 Payments
//
//  Created by Minhung Ling on 2017-01-13.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

@protocol PaymentGatewayDelegate <NSObject>

- (BOOL) canProcessPaymentAmount;
- (void) processPaymentAmount: (NSInteger) cost;

@end
