//
//  JKHuman.m
//  JKMantlePractice
//
//  Created by Jayesh Kawli Backup on 7/24/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

#import "JKFinanceHuman.h"
#import "JKTechnologyHuman.h"
#import "JKHuman.h"

@implementation JKHuman

+ (NSDictionary*)JSONKeyPathsByPropertyKey {
    return @{
             @"humanName": @"name",
             };
}

+ (Class)classForParsingJSONDictionary:(NSDictionary *)JSONDictionary {
    if (JSONDictionary[@"salary"]) {
        return JKFinanceHuman.class;
    } else if (JSONDictionary[@"languages_known"]) {
        return JKTechnologyHuman.class;
    }
    
    NSAssert(NO, @"No matching class for input json %@", JSONDictionary);
    
    return self;
}

@end
