//
// Created by Lukas Kollmer on 17/06/14.
// Copyright (c) 2014 Lukas Kollmer. All rights reserved.
//

#import "Person.h"


@implementation Person {

}

- (id)initWithFirstName: (NSString *)firstName lastName: (NSString *)lastName birthday: (NSDate *)birthday address: (NSDictionary *)addressDictionary
{
    self.firstName = firstName;
    self.lastName = lastName;
    self.birthday = birthday;
    self.address = addressDictionary;
    return self;
}
@end