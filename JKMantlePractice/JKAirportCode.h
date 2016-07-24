//
//  JKAirportCode.h
//  JKMantlePractice
//
//  Created by Jayesh Kawli Backup on 7/23/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

#import <Mantle/Mantle.h>
#import <Foundation/Foundation.h>

@interface JKAirportCode : MTLModel<MTLJSONSerializing>

@property (nonatomic, copy, readonly) NSString* requestedCode;
@property (nonatomic, copy, readonly) NSString* fsCode;

@end
