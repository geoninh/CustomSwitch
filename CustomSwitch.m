//
//  CustomSwitch.m
//  CustomSwitch
//
//  Created by NinhNguyen on 9/1/15.
//  Copyright (c) 2015 NinhNguyen. All rights reserved.
//

#import "CustomSwitch.h"

@implementation CustomSwitch{

    UIButton *_buttonON;
    UIButton *_buttonOFF;

}
-(instancetype) initWithFrame:(CGRect)frame{
    self = [super initWithFrame:CGRectMake(frame.origin.x, frame.origin.y
                                           , 142, 51)];
    _buttonOFF = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 69, 51)];
    _buttonON = [[UIButton alloc]initWithFrame:CGRectMake(69, 0, 72, 51)];
    
    [_buttonOFF addTarget:self
                  action:@selector(PressOFF)
        forControlEvents:UIControlEventTouchUpInside];
    
    [_buttonON addTarget:self
                  action:@selector(PressON)
        forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:_buttonOFF];
    [self addSubview:_buttonON];
    self.value = false;
    
    return self;

}

-(void)PressOFF{
    self.value = false;

}

-(void)PressON{
    self.value = true;
}

//getter function
- (BOOL) getValue{
    return  _value; // _value la instan varibale tu dong anh xa vao property value
}

//setter function
-(void) setterValue:(BOOL) value{
    _value = value;
    if (_value) {
        [_buttonOFF setImage:[UIImage imageNamed:@"OffWhite.png"] forState:UIControlStateNormal];
        [_buttonON setImage:[UIImage imageNamed:@"OnBlack.png"] forState:UIControlStateNormal];
    }else{
        [_buttonOFF setImage:[UIImage imageNamed:@"OffBlack.png"] forState:UIControlStateNormal];
        [_buttonON setImage:[UIImage imageNamed:@"OnWhite.png"] forState:UIControlStateNormal];
    }

}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
