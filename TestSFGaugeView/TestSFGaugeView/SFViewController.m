//
//  SFViewController.h
//  TachometerView
//
//  Created by Thomas Winkler on 15/11/13.
//  Copyright (c) 2013 Thomas Winkler. All rights reserved.
//

#import "SFViewController.h"
#import "SFGaugeView.h"


@interface SFViewController ()

@property (weak, nonatomic) IBOutlet SFGaugeView *topTachometer;
@property (weak, nonatomic) IBOutlet SFGaugeView *middleTachometer;
@property (weak, nonatomic) IBOutlet SFGaugeView *leftTachometer;

@end

@implementation SFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.topTachometer.bgColor = [UIColor colorWithRed:0/255.0 green:124/255.0 blue:205/255.0 alpha:1];
    self.topTachometer.needleColor = [UIColor colorWithRed:0/255.0 green:39/255.0 blue:64/255.0 alpha:1];
    self.topTachometer.hideLevel = YES;

    self.middleTachometer.bgColor = [UIColor colorWithRed:102/255.0 green:175/255.0 blue:102/255.0 alpha:1];
    self.middleTachometer.needleColor = [UIColor colorWithRed:27/255.0 green:103/255.0 blue:107/255.0 alpha:1];
    self.middleTachometer.maxlevel = 10;
    self.middleTachometer.minImage = @"minImage";
    self.middleTachometer.maxImage = @"maxImage";
    self.middleTachometer.currentLevel = 3;

    self.leftTachometer.maxlevel = 8;
    self.leftTachometer.bgColor = [UIColor colorWithRed:249/255.0 green:203/255.0 blue:0/255.0 alpha:1];
    self.leftTachometer.needleColor = [UIColor colorWithRed:247/255.0 green:164/255.0 blue:2/255.0 alpha:1];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
