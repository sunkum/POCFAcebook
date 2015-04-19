//
//  ViewController.m
//  POCFacebook
//
//  Created by sunil on 4/16/15.
//  Copyright (c) 2015 sunil. All rights reserved.
//

#import "ViewController.h"
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
#import <FBSDKShareKit/FBSDKShareKit.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
     [super viewDidLoad];
     // Do any additional setup after loading the view, typically from a nib.
//     FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
//     loginButton.center = self.view.center;
//     [self.view addSubview:loginButton];
     
     FBSDKShareLinkContent *content = [[FBSDKShareLinkContent alloc] init];
     content.contentURL = [NSURL URLWithString:@"https://developers.facebook.com"];
     
     FBSDKShareButton *button1 = [[FBSDKShareButton alloc] init];
     button1.shareContent = content;
     button1.center =self.view.center;
     [self.view addSubview:button1];
     
//     FBSDKLikeControl *button = [[FBSDKLikeControl alloc] init];
//     button.objectID = @"https://www.facebook.com/FacebookDevelopers";
//     [self.view addSubview:button];
     


}

- (void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info
{
     UIImage *image = info[UIImagePickerControllerOriginalImage];
     
     FBSDKSharePhoto *photo = [[FBSDKSharePhoto alloc] init];
     photo.image = image;
     photo.userGenerated = YES;
     FBSDKSharePhotoContent *content = [[FBSDKSharePhotoContent alloc] init];
     content.photos = @[photo];
}




- (void)didReceiveMemoryWarning {
     [super didReceiveMemoryWarning];
     // Dispose of any resources that can be recreated.
}

@end
