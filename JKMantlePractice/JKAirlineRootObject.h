//
//  JKAirlineRootObject.h
//  JKMantlePractice
//
//  Created by Jayesh Kawli Backup on 7/23/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

#import <Mantle/Mantle.h>
#import <Foundation/Foundation.h>
#import "JKAirlineDelayIndex.h"
#import "JKAirportCode.h"
#import "JKAirlineScore.h"

@interface JKAirlineRootObject : MTLModel<MTLJSONSerializing>

@property (nonatomic, copy, readonly) NSArray<JKAirportCode*>* airportCodes;
@property (nonatomic, copy, readonly) NSURL* urlString;
@property (nonatomic, strong, readonly) JKAirlineScore* score;
@property (nonatomic, copy, readonly) NSString* classificationName;
@property (nonatomic, copy, readonly) NSString* classificationIdentifier;
@property (nonatomic, copy, readonly) NSArray<JKAirlineDelayIndex*>* delayIndices;

@end
