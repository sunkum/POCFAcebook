//
//  secondViewController.m
//  POCFacebook
//
//  Created by sunil on 4/19/15.
//  Copyright (c) 2015 sunil. All rights reserved.
//

#import "secondViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>

@interface secondViewController ()
@property (weak, nonatomic) IBOutlet FBSDKLoginButton *loginButton;
@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     if ([FBSDKAccessToken currentAccessToken]) {
          // User is logged in, do work such as go to next view controller.
     }
    // Do any additional setup after loading the view.
self.loginButton.readPermissions = @[@"name", @"email", @"picture"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
