//
//  main.m
//  20170113 Payments
//
//  Created by Minhung Ling on 2017-01-13.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    PaymentGateway *gateway = [[PaymentGateway alloc] init];
    PaypalPaymentService *payPal = nil;
    StripePaymentService *stripe = nil;
    AmazonPaymentService *amazon = nil;
    ApplePaymentService *applePay = nil;
    NSInteger totalCost = arc4random_uniform(901)+100;
    NSLog(@"Thank you for shopping at Acme.com Your total today is %ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: ApplePay", totalCost);
    char str[100];
    fgets (str, 100, stdin);
    NSString *inputString = [[NSString alloc] initWithUTF8String:str];
    inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSInteger inputInteger = [inputString intValue];
    switch (inputInteger) {
        case 1: {
            payPal = [[PaypalPaymentService alloc] init];
            gateway.delegate = payPal;
        }
            break;
        case 2: {
            stripe = [[StripePaymentService alloc] init];
            gateway.delegate = stripe;
        }
            break;
        case 3: {
            amazon = [[AmazonPaymentService alloc] init];
            gateway.delegate = amazon;
        }
            break;
        case 4: {
            applePay = [[ApplePaymentService alloc] init];
            gateway.delegate = applePay;
        }
    }
    
    [gateway processPaymentAmount:totalCost];
    return 0;
}
