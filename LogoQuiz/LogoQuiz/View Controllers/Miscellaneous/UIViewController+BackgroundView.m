//
//  UIViewController+BackgroundView.m
//  LogoQuiz
//
//  Created by Pulkit on 27/12/15.
//  Copyright © 2015 Pulkit. All rights reserved.
//

#import "UIViewController+BackgroundView.h"

@implementation UIViewController (BackgroundView)

-(void) setupBackgroundImage{
    UIImageView *backgroundImageView = [[UIImageView alloc] initWithFrame:self.view.frame];
    [backgroundImageView setImage:[UIImage imageNamed:@"Collage-Blur"]];
    [self.view addSubview:backgroundImageView];
    
    UIView *blackLayerView = [[UIView alloc] initWithFrame:backgroundImageView.frame];
    [blackLayerView setBackgroundColor:[UIColor blackColor]];
    [blackLayerView setAlpha:0.8];
    [self.view addSubview:blackLayerView];
    [self.view sendSubviewToBack:blackLayerView];
    [self.view sendSubviewToBack:backgroundImageView];
}

-(void) hideNavigationBar{
    [self.navigationController setNavigationBarHidden:YES];
}
@end
