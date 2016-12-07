//
//  CDPickerView.h
//  CDPickerView
//
//  Created by chendi on 16/12/7.
//  Copyright © 2016年 chendi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CDPickerView : UIView<UIPickerViewDelegate, UIPickerViewDataSource>

@property (nonatomic, strong) UIPickerView *pickerView;

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIButton *cancelBtn;
@property (nonatomic, strong) UIButton *confirmBtn;

@end
