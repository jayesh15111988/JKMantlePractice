//
//  JKAirportCode.m
//  JKMantlePractice
//
//  Created by Jayesh Kawli Backup on 7/23/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

#import "JKAirportCode.h"

@implementation JKAirportCode

+ (NSDictionary*)JSONKeyPathsByPropertyKey {
    return @{
             @"requestedCode": @"requestedCode",
             @"fsCode": @"fsCode"
             };
}

@end
