//
//  ViewController.m
//  Contacts
//
//  Created by Lukas Kollmer on 17/06/14.
//  Copyright (c) 2014 Lukas Kollmer. All rights reserved.
//


#import "ViewController.h"
#import "Person.h"
#import "AddressBook/ABAddressBook.h"


@interface ViewController ()
            

@end

@implementation ViewController {
    NSString *_firstName;
    NSString *_lastName;
    NSDate *_birthday;
    NSDictionary *_addressDict;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)getContactInformation
{
    Person *person = [[Person alloc] initWithFirstName:_firstName lastName:_lastName birthday:_birthday address:_addressDict];



}

@end