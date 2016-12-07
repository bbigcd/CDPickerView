//
//  ViewController.m
//  CDPickerView
//
//  Created by chendi on 16/12/7.
//  Copyright © 2016年 chendi. All rights reserved.
//

#import "ViewController.h"
#import "CDPickerView.h"
#import "UIView+CDExtension.h"

@interface ViewController ()

@property (nonatomic, strong) CDPickerView *pickerView;
@property (nonatomic, assign, getter=isShowing) BOOL showing;
@end

#define KSCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define KSCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pickerView = [[CDPickerView alloc] initWithFrame:(CGRect){0, KSCREENHEIGHT, KSCREENWIDTH, 200}];
    _pickerView.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:_pickerView];
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    CGFloat pickerViewY;
    if (_showing) {
        pickerViewY  = KSCREENHEIGHT - _pickerView.height;
    }else{
        pickerViewY  = KSCREENHEIGHT;
    }
    [UIView animateWithDuration:0.3 animations:^{
        _pickerView.y = pickerViewY;
    }];
    _showing = !_showing;
}

@end
