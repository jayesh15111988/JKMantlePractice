//
//  JKAirlineDelayIndex.m
//  JKMantlePractice
//
//  Created by Jayesh Kawli Backup on 7/23/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

#import "JKAirlineDelayIndex.h"

@implementation JKAirlineDelayIndex

+ (NSDictionary*)JSONKeyPathsByPropertyKey {
    return @{
             @"airportDetails": @"airport",
             @"rawScore": @"rawScore",
             @"startDate": @"dateStart",
             @"delayedByMinutes": @"delayed45"
             };
}

+ (NSValueTransformer *)startDateJSONTransformer {
    return [MTLValueTransformer transformerUsingForwardBlock:^id(NSString *dateString, BOOL *success, NSError *__autoreleasing *error) {
        return [self.dateFormatter dateFromString:dateString];
    } reverseBlock:^id(NSDate *date, BOOL *success, NSError *__autoreleasing *error) {
        return [self.dateFormatter stringFromDate:date];
    }];
}

+ (NSValueTransformer *)airportDetailsJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:JKAirportDetails.class];
}

+ (NSDateFormatter*)dateFormatter {
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc] init];
    dateFormatter.locale = [[NSLocale alloc] initWithLocaleIdentifier:[[NSLocale currentLocale] localeIdentifier]];
    dateFormatter.timeZone = [NSTimeZone systemTimeZone];
    dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";
    return dateFormatter;
}

@end
