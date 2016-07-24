//
//  JKAirportDetails.h
//  JKMantlePractice
//
//  Created by Jayesh Kawli Backup on 7/24/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

#import <Mantle/Mantle.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface JKAirportDetails : MTLModel<MTLJSONSerializing>

@property (nonatomic, copy, readonly) NSString* countryName;
@property (nonatomic, strong, readonly) NSDate* localDateTime;
@property (nonatomic, assign, readonly) CGFloat longitude;
@property (nonatomic, assign, readonly) BOOL active;

@end
