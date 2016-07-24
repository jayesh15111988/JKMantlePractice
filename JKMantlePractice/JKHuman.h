//
//  JKHuman.h
//  JKMantlePractice
//
//  Created by Jayesh Kawli Backup on 7/24/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface JKHuman : MTLModel<MTLJSONSerializing>

@property (nonatomic, copy, readonly) NSString* humanName;

@end
