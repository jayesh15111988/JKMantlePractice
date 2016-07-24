//
//  JKAirlineScore.h
//  JKMantlePractice
//
//  Created by Jayesh Kawli Backup on 7/23/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

#import <Mantle/Mantle.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface JKAirlineScore : MTLModel<MTLJSONSerializing>

@property (nonatomic, strong, readonly) NSNumber* maxScore;
@property (nonatomic, strong, readonly) NSNumber* minScore;

@end
