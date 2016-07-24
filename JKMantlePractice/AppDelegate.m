//
//  AppDelegate.m
//  JKMantlePractice
//
//  Created by Jayesh Kawli Backup on 7/24/16.
//  Copyright © 2016 Jayesh Kawli Backup. All rights reserved.
//

#import "JKAirlineRootObject.h"
#import "JKCompany.h"
#import "JKHuman.h"
#import "JKTechnologyHuman.h"
#import "JKFinanceHuman.h"
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
    
    NSError* humanError;
    NSDictionary* financeHumanJSON = [self jsonDataFromFileWithName:@"finance_human"];
    JKFinanceHuman* financeHuman = [MTLJSONAdapter modelOfClass:JKHuman.class fromJSONDictionary:financeHumanJSON error:&humanError];
    financeHumanJSON = [MTLJSONAdapter JSONDictionaryFromModel:financeHuman error:nil];
    
    NSDictionary* technologyHumanJSON = [self jsonDataFromFileWithName:@"technology_human"];
    JKFinanceHuman* technologyHuman = [MTLJSONAdapter modelOfClass:JKHuman.class fromJSONDictionary:technologyHumanJSON error:&humanError];
    technologyHumanJSON = [MTLJSONAdapter JSONDictionaryFromModel:technologyHuman error:nil];
    
    return YES;
}

- (id)jsonDataFromFileWithName:(NSString*)jsonFileName {
    NSString* filePath = [[NSBundle mainBundle] pathForResource:jsonFileName ofType:@"json"];
    NSData* data = [NSData dataWithContentsOfFile:filePath];
    return [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
}

@end
