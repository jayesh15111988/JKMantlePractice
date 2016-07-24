//
//  JKTechnologyHuman.m
//  JKMantlePractice
//
//  Created by Jayesh Kawli Backup on 7/24/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

#import "JKTechnologyHuman.h"

@implementation JKTechnologyHuman

+ (NSDictionary*)JSONKeyPathsByPropertyKey {
    return [[super JSONKeyPathsByPropertyKey] mtl_dictionaryByAddingEntriesFromDictionary:@{
                                                                                            @"languagesKnown": @"languages_known",
                                                                                            }];
}


@end
