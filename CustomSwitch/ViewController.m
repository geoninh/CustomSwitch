//
//  ViewController.m
//  CustomSwitch
//
//  Created by NinhNguyen on 8/13/15.
//  Copyright (c) 2015 NinhNguyen. All rights reserved.
//

#import "ViewController.h"
#import "CustomSwitch.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonOFF;

@property (weak, nonatomic) IBOutlet UIButton *buttonOn;
@end

@implementation ViewController{

    AVAudioPlayer *_playMusic;
    CustomSwitch *mySwitch;

}

- (void)viewDidLoad {
    [super viewDidLoad];
   UIImage *imgOn = [UIImage imageNamed:@"OnWhite.png"];
    [self.buttonOn setImage:imgOn forState:UIControlStateNormal];

    UIImage *imgOFF = [UIImage imageNamed:@"OffBlack.png"];
    [self.buttonOFF setImage:imgOFF forState:UIControlStateNormal];
    
    mySwitch  = [[CustomSwitch alloc]initWithFrame:CGRectMake(0, 0, 142, 51)];
    mySwitch.center = CGPointMake(self.view.bounds.size.width*0.5, 120);
    [self.view addSubview:mySwitch];
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Why_Not_Me" ofType:@"mp3"];
    _playMusic = [[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL URLWithString:path] error:NULL];
    
    
}
- (IBAction)btnClickOn:(id)sender {
    [self.buttonOn setImage:[UIImage imageNamed:@"OnBlack.png"] forState:UIControlStateNormal];
    [self.buttonOFF setImage:[UIImage imageNamed:@"OffWhite.png"] forState:UIControlStateNormal];
    
    
    [_playMusic play];
}
- (IBAction)btnClickOFF:(id)sender {
    [self.buttonOn setImage:[UIImage imageNamed:@"OnWhite.png"] forState:UIControlStateNormal];
    [self.buttonOFF setImage:[UIImage imageNamed:@"OffBlack.png"] forState:UIControlStateNormal];
    
   
    [_playMusic pause];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
