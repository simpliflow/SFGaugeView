//
//  SFViewController.h
//  TachometerView
//
//  Created by Thomas Winkler on 15/11/13.
//  Copyright (c) 2013 Thomas Winkler. All rights reserved.
//

#import "SFViewController.h"
#import "SFGaugeView.h"
#import "SFViewXIB.h"


@interface SFViewController ()

@property (weak, nonatomic) IBOutlet SFGaugeView *gaugeSample;

@end

@implementation SFViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    // Load from XIB/NIB example:
//    SFViewXIB* view = [[[NSBundle mainBundle] loadNibNamed:@"SFViewXIB" owner:nil options:nil] lastObject];
//    view.graphSlider.bgColor     = [UIColor colorWithRed:0/255.0 green:124/255.0 blue:205/255.0 alpha:1];
//    view.graphSlider.needleColor = [UIColor colorWithRed:0/255.0 green:39/255.0 blue:64/255.0 alpha:1];
//    view.graphSlider.hideLevel   = YES;
//    
//    view.graphSlider.maxlevel = 115; // initial
//    view.graphSlider.currentLevel = 0;
//    
//    view.frame = self.view.frame;
//    [self.view addSubview:view];
    
//    self.gaugeSample.bgColor = [UIColor colorWithRed:0/255.0 green:124/255.0 blue:205/255.0 alpha:1];
//    self.gaugeSample.needleColor = [UIColor colorWithRed:0/255.0 green:39/255.0 blue:64/255.0 alpha:1];
//    self.gaugeSample.hideLevel = YES;
//    self.gaugeSample.minImage = @"minImage";
//    self.gaugeSample.maxImage = @"maxImage";
//    self.gaugeSample.autoAdjustImageColors = YES;
    
    ///-Uncomment to see custom values
    self.gaugeSample.bgColor = [UIColor colorWithRed:102/255.0 green:175/255.0 blue:102/255.0 alpha:1];
    self.gaugeSample.needleColor = [UIColor colorWithRed:27/255.0 green:103/255.0 blue:107/255.0 alpha:1];
    self.gaugeSample.maxlevel = 10;
    self.gaugeSample.minlevel = 1;
    self.gaugeSample.needleRadius = 8.2;
//    self.gaugeSample.firstPercentage = 0.30;
//    self.gaugeSample.secondPercentage = 0.70;
    self.gaugeSample.currentLevel = 2;
    self.gaugeSample.autoAdjustImageColors = NO;
    self.gaugeSample.delegate = self;

    ///-Uncomment to see custom values
//    self.gaugeSample.maxlevel = 8;
//    self.gaugeSample.minlevel = 0;
//    self.gaugeSample.bgColor = [UIColor colorWithRed:249/255.0 green:203/255.0 blue:0/255.0 alpha:1];
//    self.gaugeSample.needleColor = [UIColor colorWithRed:247/255.0 green:164/255.0 blue:2/255.0 alpha:1];
//    self.gaugeSample.needleRadius = 8;
    
}

- (void) sfGaugeView:(SFGaugeView *)gaugeView didChangeLevel:(NSInteger)level
{
    NSLog(@"Value of middle tachometer changed to %ld", (long)level);
}

@end
