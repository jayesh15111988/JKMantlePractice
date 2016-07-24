//
//  JKCompany.h
//  JKMantlePractice
//
//  Created by Jayesh Kawli Backup on 7/24/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, RelationshipStatus) {
    RelationshipStatusSingle,
    RelationshipStatusCommitted,
    RelationshipStatusUnknown
};

@interface JKCompany : MTLModel<MTLJSONSerializing>

@property (nonatomic, copy, readonly) NSString* companyName;
@property (nonatomic, strong, readonly) NSNumber* turnoverAmount;
@property (nonatomic, copy, readonly) NSString* companyLocation;
@property (nonatomic, strong, readonly) NSNumber* taxRate;
@property (nonatomic, copy, readonly) NSString* myName;
@property (nonatomic, assign, readonly) RelationshipStatus relStatus;
@property (nonatomic, assign, readonly) BOOL boolTest;
@property (nonatomic, assign, readonly) BOOL boolTest1;
@property (nonatomic, assign, readonly) BOOL useless;


@end
