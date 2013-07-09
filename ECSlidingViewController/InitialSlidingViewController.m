//
//  InitialSlidingViewController.m
//  ECSlidingViewController
//
//  Created by Michael Enriquez on 1/25/12.
//  Copyright (c) 2012 EdgeCase. All rights reserved.
//
//  Edited by wkberg on 6/8/12.

#import "InitialSlidingViewController.h"

@interface InitialSlidingViewController ()

@end

@implementation InitialSlidingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  
  NSString *identifier = @"FirstTop"; //This is the ident for the first top viewcontroller
    UIViewController *initViewController = [ECSlidingViewController queryViewController:identifier]; //Check if viewcontroller does exist
    if (!initViewController) {
        initViewController = [self.storyboard instantiateViewControllerWithIdentifier:identifier]; //if not: instantiate it
        [ECSlidingViewController addViewController:identifier viewController:initViewController]; //add instantiated vC to the list
    }
    self.topViewController = initViewController;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
  return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
