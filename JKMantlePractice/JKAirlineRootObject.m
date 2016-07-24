//
//  JKAirlineRootObject.m
//  JKMantlePractice
//
//  Created by Jayesh Kawli Backup on 7/23/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

#import "JKAirlineRootObject.h"

@implementation JKAirlineRootObject

+ (NSDictionary*)JSONKeyPathsByPropertyKey {
    return @{
             @"airportCodes": @"request.airportCodes",
             @"urlString": @"request.url",
             @"classificationName": @"request.classification.name",
             @"classificationIdentifier": @"request.classification.id",
             @"score": @"request.score",
             @"delayIndices": @"delayIndexes"
             };
}

+ (NSValueTransformer *)airportCodesJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:JKAirportCode.class];
}

+ (NSValueTransformer *)scoreJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:JKAirlineScore.class];
}

+ (NSValueTransformer*)urlStringJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer*)classificationIdentifierJSONTransformer {
    return [MTLValueTransformer transformerUsingForwardBlock:^id(NSNumber *classificationIdentifierNumber, BOOL *success, NSError *__autoreleasing *error) {
        return [NSString stringWithFormat:@"%@", classificationIdentifierNumber];
    } reverseBlock:^id(NSString* classificationIdentifierString, BOOL *success, NSError *__autoreleasing *error) {
        return @([classificationIdentifierString integerValue]);
    }];
}

+ (NSValueTransformer *)delayIndicesJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:JKAirlineDelayIndex.class];
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError **)error {
    self = [super initWithDictionary:dictionaryValue error:error];
    if (self == nil) return nil;
    
    return self;
}


@end
