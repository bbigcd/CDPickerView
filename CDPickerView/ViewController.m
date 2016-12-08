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

@interface ViewController ()<CDPickerViewDelegate>

@property (nonatomic, strong) CDPickerView *pickerView;

@end

#define KSCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define KSCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.pickerView = [[CDPickerView alloc] initWithFrame:(CGRect){0, KSCREENHEIGHT, KSCREENWIDTH, 200}];
    _pickerView.delegate = self;
    _pickerView.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:_pickerView];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [UIView animateWithDuration:0.3 animations:^{
        _pickerView.y = KSCREENHEIGHT - _pickerView.height;
    }];
}

#pragma mark --CDPickerViewDelegate--

- (void)didSelecteCancelBtn{
    [UIView animateWithDuration:0.3 animations:^{
        _pickerView.y = KSCREENHEIGHT;
    }];
}

- (void)didSelecteConfirmBtn{
    [UIView animateWithDuration:0.3 animations:^{
        _pickerView.y = KSCREENHEIGHT;
    }];
}

@end
