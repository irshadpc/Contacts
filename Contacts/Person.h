//
// Created by Lukas Kollmer on 17/06/14.
// Copyright (c) 2014 Lukas Kollmer. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject

@property (nonatomic, retain) NSString *firstName;
@property(nonatomic, copy) NSString *lastName;
@property(nonatomic, strong) NSDate *birthday;
@property(nonatomic, strong) NSDictionary *address;


- (id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName birthday:(NSDate *)birthday address:(NSDictionary *)addressDictionary;
@end