//
//  JKAirlineScore.m
//  JKMantlePractice
//
//  Created by Jayesh Kawli Backup on 7/23/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

#import "JKAirlineScore.h"

@implementation JKAirlineScore

+ (NSDictionary*)JSONKeyPathsByPropertyKey {
    return @{
             @"maxScore": @"maxScore",
             @"minScore": @"minScore"
             };
}

@end
