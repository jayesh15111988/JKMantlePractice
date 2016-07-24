//
//  JKCompany.m
//  JKMantlePractice
//
//  Created by Jayesh Kawli Backup on 7/24/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "JKCompany.h"

@implementation JKCompany

+ (NSDictionary*)JSONKeyPathsByPropertyKey {
    return @{
             @"companyName": @"name",
             @"turnoverAmount": @"turnover",
             @"companyLocation": @"location",
             @"taxRate": @"taxRate",
             @"myName": @"myName",
             @"relStatus": @"relationship_status",
             @"boolTest": @"boolTest",
             @"boolTest1": @"boolTest1"             
             };
}

+ (NSValueTransformer*)myNameJSONTransformer {
    return [MTLValueTransformer transformerUsingForwardBlock:^NSString*(NSString *myName, BOOL *success, NSError *__autoreleasing *error) {
        return [NSString stringWithFormat:@"%@ is great", myName];
    } reverseBlock:^NSString*(NSString* myName, BOOL *success, NSError *__autoreleasing *error) {
        return [[myName componentsSeparatedByString:@" "] firstObject];
    }];
}

+ (NSValueTransformer*)relStatusJSONTransformer {
    return [MTLValueTransformer mtl_valueMappingTransformerWithDictionary:@{@"single": @(RelationshipStatusSingle), @"committed": @(RelationshipStatusCommitted)} defaultValue:@(RelationshipStatusUnknown) reverseDefaultValue:@"unknown"];
}

+ (NSValueTransformer *)boolTestJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLBooleanValueTransformerName];
}

+ (NSValueTransformer *)boolTest1JSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLBooleanValueTransformerName];
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError **)error {
    self = [super initWithDictionary:dictionaryValue error:error];
    if (self == nil) return nil;
    
    _useless = [_taxRate floatValue] < 11;
    
    return self;
}


@end
