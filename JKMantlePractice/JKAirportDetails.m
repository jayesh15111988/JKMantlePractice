//
//  JKAirportDetails.m
//  JKMantlePractice
//
//  Created by Jayesh Kawli Backup on 7/24/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//


#import "JKAirportDetails.h"

@implementation JKAirportDetails

+ (NSDictionary*)JSONKeyPathsByPropertyKey {
    return @{
             @"countryName": @"countryName",
             @"localDateTime": @"localTime",
             @"longitude": @"longitude",
             @"longitude": @"longitude",
             @"active": @"active"
             };
}

+ (NSValueTransformer *)localDateTimeJSONTransformer {
    return [MTLValueTransformer transformerUsingForwardBlock:^id(NSString *dateString, BOOL *success, NSError *__autoreleasing *error) {
        return [self.dateFormatter dateFromString:dateString];
    } reverseBlock:^id(NSDate *date, BOOL *success, NSError *__autoreleasing *error) {
        return [self.dateFormatter stringFromDate:date];
    }];
}

+ (NSDateFormatter*)dateFormatter {
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
    return dateFormatter;
}

@end
