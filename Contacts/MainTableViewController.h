//
// Created by Lukas Kollmer on 17/06/14.
// Copyright (c) 2014 Lukas Kollmer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"


@interface MainTableViewController : UITableViewController

@property (nonatomic, strong) UITableView *tableView;




- (IBAction)addButtonClicked:(id)sender;

- (IBAction)cancelButtonClicked:(id)sender;

///////////////////////////////////////////
//////////  UITableView Outlets  //////////
///////////////////////////////////////////


// Section 1 - Name
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *companyTextField;


// Section 2 - Phone
@property (weak, nonatomic) IBOutlet UILabel *mobilePhoneLabel;
@property (weak, nonatomic) IBOutlet UILabel *homePhoneLabel;
@property (weak, nonatomic) IBOutlet UILabel *workPhoneLabel;

@property (weak, nonatomic) IBOutlet UITextField *mobilePhoneTextField;
@property (weak, nonatomic) IBOutlet UITextField *homePhoneTextField;
@property (weak, nonatomic) IBOutlet UITextField *workPhoneTextField;

// Section 3 - EMail
@property (weak, nonatomic) IBOutlet UILabel *homeEmailLabel;
@property (weak, nonatomic) IBOutlet UILabel *workEmailLabel;

@property (weak, nonatomic) IBOutlet UITextField *homeEmailTextField;
@property (weak, nonatomic) IBOutlet UITextField *workEmailTextField;

// Section 4 - Address
@property (weak, nonatomic) IBOutlet UILabel *streetAddressLabel;
@property (weak, nonatomic) IBOutlet UILabel *postalCodeAddressLabel;
@property (weak, nonatomic) IBOutlet UILabel *cityAddressLabel;

@property (weak, nonatomic) IBOutlet UITextField *streetAddressTextField;
@property (weak, nonatomic) IBOutlet UITextField *postalCodeAddressTextField;
@property (weak, nonatomic) IBOutlet UITextField *cityAddressTextField;

// Section 5 - Birthday
@property (weak, nonatomic) IBOutlet UIDatePicker *birthdayDatePicker;
@end