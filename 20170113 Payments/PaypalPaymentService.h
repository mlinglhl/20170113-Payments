//
//  PayPalPaymentService.h
//  20170113 Payments
//
//  Created by Minhung Ling on 2017-01-13.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGatewayDelegate.h"

@interface PaypalPaymentService : NSObject <PaymentGatewayDelegate>

@end