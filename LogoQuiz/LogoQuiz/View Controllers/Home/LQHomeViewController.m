//
//  LQHomeViewController.m
//  LogoQuiz
//
//  Created by Pulkit on 17/12/15.
//  Copyright © 2015 Pulkit. All rights reserved.
//

#import "LQHomeViewController.h"
#import "UIViewController+BackgroundView.h"
#import <QuartzCore/QuartzCore.h>

@interface LQHomeViewController ()
@property (weak, nonatomic) IBOutlet UIButton *playButton;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *storeButton;
@property (weak, nonatomic) IBOutlet UIButton *optionsButton;
@property (weak, nonatomic) IBOutlet UIButton *statisticsButton;

@end

@implementation LQHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated{
    [self setupBackgroundImage];
    [self hideNavigationBar];
    [self setupButtonViews];
}

-(void)viewDidAppear:(BOOL)animated{
}

-(void)setupButtonViews{
    [_playButton.layer setBorderWidth:1.0];
    [_playButton setBackgroundColor:[UIColor lightGrayColor]];
    [_playButton.layer setBorderColor:[[UIColor orangeColor] CGColor]];
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
