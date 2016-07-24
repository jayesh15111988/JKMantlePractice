//
//  JKAirlineDelayIndex.h
//  JKMantlePractice
//
//  Created by Jayesh Kawli Backup on 7/23/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

#import <Mantle/Mantle.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "JKAirportDetails.h"

@interface JKAirlineDelayIndex : MTLModel<MTLJSONSerializing>

@property (nonatomic, strong, readonly) JKAirportDetails* airportDetails;
@property (nonatomic, assign, readonly) CGFloat rawScore;
@property (nonatomic, strong, readonly) NSDate* startDate;
@property (nonatomic, assign, readonly) CGFloat delayedByMinutes;

@end
