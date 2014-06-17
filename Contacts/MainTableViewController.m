//
// Created by Lukas Kollmer on 17/06/14.
// Copyright (c) 2014 Lukas Kollmer. All rights reserved.
//

#import "MainTableViewController.h"
#import "AddressBook/AddressBook.h"


@implementation MainTableViewController {

    NSString *_firstName;
    NSString *_lastName;
    NSString *_company;
    NSString *_mobilePhone;
    NSString *_homePhone;
    NSString *_workPhone;
    NSString *_homeEmail;
    NSString *_workEmail;
    NSString *_streetAddress;
    NSString *_postalCodeAddress;
    NSString *_cityAddress;
    NSDate *_birthday;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section)
    {
        case 0:
            return @""; // This adds a small space above the first section
        case 1:
            return @"";
        default:
            return nil;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"Did select section %i, row %i", indexPath.section, indexPath.row);
}


- (void)addContact
{
    [self getContactInformation];
    [self saveToAddressBook];
}


- (void)getContactInformation
{
    // Name
    _firstName = [self.firstNameTextField text];
    _lastName = [self.lastNameTextField text];
    _company = [self.companyTextField text];

    // Phone
    _mobilePhone = [self.mobilePhoneTextField text];
    _homePhone = [self.homePhoneTextField text];
    _workPhone = [self.workPhoneTextField text];

    // Email
    _homeEmail = [self.homeEmailTextField text];
    _workEmail = [self.workEmailTextField text];

    // Address
    _streetAddress = [self.streetAddressTextField text];
    _postalCodeAddress = [self.postalCodeAddressTextField text];
    _cityAddress = [self.cityAddressTextField text];
    //_stateAddress = [self.stateAddressTextField text];
    //_countryAddress = [self.countryAddressTextField text];

    // Birthday
    _birthday = [self.birthdayDatePicker date];

    NSDateComponents *components = [[NSCalendar currentCalendar] components:NSYearCalendarUnit|NSMonthCalendarUnit|NSDayCalendarUnit
                                                                   fromDate:[NSDate date]];
    _birthday = [[NSCalendar currentCalendar] dateFromComponents:components];

}

- (void)saveToAddressBook
{

    ABAddressBookRef addressBookRef = ABAddressBookCreateWithOptions(NULL, nil);
    ABRecordRef contact = ABPersonCreate();

    // Name
    ABRecordSetValue(contact, kABPersonFirstNameProperty, (__bridge CFStringRef)_firstName, nil);
    ABRecordSetValue(contact, kABPersonLastNameProperty, (__bridge CFStringRef)_lastName, nil);
    ABRecordSetValue(contact, kABPersonOrganizationProperty, (__bridge CFStringRef)_company, NULL);


    // Phone
    ABMutableMultiValueRef phoneNumbers = ABMultiValueCreateMutable(kABMultiStringPropertyType);

    ABMultiValueAddValueAndLabel(phoneNumbers, (__bridge CFStringRef)_mobilePhone, kABPersonPhoneMobileLabel, NULL);
    ABMultiValueAddValueAndLabel(phoneNumbers, (__bridge CFStringRef)_homePhone, kABPersonPhoneMainLabel, NULL);
    ABMultiValueAddValueAndLabel(phoneNumbers, (__bridge CFStringRef)_workPhone, kABPersonPhoneWorkFAXLabel, NULL);

    ABRecordSetValue(contact, kABPersonPhoneProperty, phoneNumbers, nil);


    // Address
    ABRecordSetValue(contact, (ABPropertyID) kABPersonAddressStreetKey, (__bridge CFStringRef)_streetAddress, NULL);
    ABRecordSetValue(contact, (ABPropertyID) kABPersonAddressZIPKey, (__bridge CFStringRef)_postalCodeAddress, NULL);
    ABRecordSetValue(contact, (ABPropertyID) kABPersonAddressCityKey, (__bridge CFStringRef)_cityAddress, NULL);
    //ABRecordSetValue(contact, (ABPropertyID) kABPersonAddressStateKey, (__bridge CFStringRef)_stateAddress, NULL);
    //ABRecordSetValue(contact, (ABPropertyID) kABPersonAddressCountryKey, (__bridge CFStringRef)_countryAddress, NULL);


    // Birthday
    ABRecordSetValue(contact, kABPersonBirthdayProperty, (__bridge CFDateRef)_birthday, NULL);


    // Save to address book
    ABAddressBookAddRecord(addressBookRef, contact, nil);
    ABAddressBookSave(addressBookRef, nil);

}

- (IBAction)addButtonClicked:(id)sender
{
    [self addContact];
}

- (IBAction)cancelButtonClicked:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end