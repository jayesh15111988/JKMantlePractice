//
//  AppDelegate.m
//  JKMantlePractice
//
//  Created by Jayesh Kawli Backup on 7/24/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

#import "JKAirlineRootObject.h"
#import "JKCompany.h"
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSError* airlineInfoParseError;
    NSDictionary* airlineInfoFromJSON = [self jsonDataFromFileWithName:@"airlineInfo"];
    JKAirlineRootObject* rootObject = [MTLJSONAdapter modelOfClass:JKAirlineRootObject.class fromJSONDictionary:airlineInfoFromJSON error:&airlineInfoParseError];
    
    NSDictionary* originalDictionary = [MTLJSONAdapter JSONDictionaryFromModel:rootObject error:&airlineInfoParseError];
    
    NSError* companyInfoParseError;
    NSArray* companyInfoFromJSON = [self jsonDataFromFileWithName:@"companies"];
    NSArray<JKCompany*>* companiesCollection = [MTLJSONAdapter modelsOfClass:JKCompany.class fromJSONArray:companyInfoFromJSON error:&companyInfoParseError];
    
    NSArray* originalCompaniesInfoDictionary = [MTLJSONAdapter JSONArrayFromModels:companiesCollection error:&companyInfoParseError];
    
    return YES;
}

- (id)jsonDataFromFileWithName:(NSString*)jsonFileName {
    NSString* filePath = [[NSBundle mainBundle] pathForResource:jsonFileName ofType:@"json"];
    NSData* data = [NSData dataWithContentsOfFile:filePath];
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}

@end
