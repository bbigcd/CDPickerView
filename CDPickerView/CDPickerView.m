//
//  CDPickerView.m
//  CDPickerView
//
//  Created by chendi on 16/12/7.
//  Copyright © 2016年 chendi. All rights reserved.
//

#import "CDPickerView.h"
#import "UIView+CDExtension.h"

#define KSCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define KSCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@implementation CDPickerView

#pragma mark --初始化--

- (instancetype)init{
    if (self = [super init]) {
        NSAssert(NO, @"please use initWithFrame:");
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder{
    if (self = [super initWithCoder:coder]) {
        NSAssert(NO, @"please use initWithFrame:");
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setupCDPickerViewUI];
    }
    return self;
}

- (void)setupCDPickerViewUI{
    UIView *view = [[UIView alloc] initWithFrame:(CGRect){0, 0, KSCREENWIDTH, 44}];
    view.backgroundColor = [UIColor grayColor];
    [self addSubview:view];
    
    self.cancelBtn.centerY = view.centerY;
    [view addSubview:_cancelBtn];
    
    self.confirmBtn.centerY = view.centerY;
    [view addSubview:_confirmBtn];
    
    self.titleLabel.center = view.center;
    [view addSubview:_titleLabel];
    
    
    [view addSubview:self.pickerView];
}

- (UIButton *)cancelBtn{
    if (!_cancelBtn) {
        CGRect frame = (CGRect){10, 10, 60, 30};
        _cancelBtn = [self createButtonWithTitle:@"取消" Frame:frame];
    }
    return _cancelBtn;
}

- (UIButton *)confirmBtn{
    if (!_confirmBtn) {
        CGRect frame = (CGRect){KSCREENWIDTH - 70, 10, 60, 30};
        _confirmBtn = [self createButtonWithTitle:@"确定" Frame:frame];
    }
    return _confirmBtn;
}

- (UIButton *)createButtonWithTitle:(NSString *)title
                              Frame:(CGRect)frame{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = frame;
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.textColor = [UIColor whiteColor];
    return button;
}

- (UILabel *)titleLabel{
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc] initWithFrame:(CGRect){0, 0, KSCREENWIDTH - 160, 30}];
        _titleLabel.text = @"测试测试测试测试测试测试测试测试测试测试测试";
    }
    return _titleLabel;
}

- (UIPickerView *)pickerView{
    if (!_pickerView) {
        _pickerView = [[UIPickerView alloc] initWithFrame:(CGRect){0, 44, KSCREENWIDTH, self.height - 44}];
        _pickerView.backgroundColor = [UIColor yellowColor];
        
    }
    return _pickerView;
}


#pragma Mark - UIPickerViewDelegate
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
//    if (_index == 2) {//出生选择器
//        return 3;
//    }
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
//    if (_index == 1){
//        return 2;
//    }else if (_index == 2) {
//        if (component==0) {//生日
//            return 96;
//        }else if (component == 1){
//            return 12;
//        }else if (component == 2){
//            return _monthTotalDays;
//        }
//    }else if (_index == 3){//体重
//        
//        return 551;
//    }else if (_index == 4){
//        return 201;
//    }
//    
    return 1;
}

//每列每行对应显示的数据是什么
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
//    if (_index == 1){
//        return [NSString stringWithFormat:@"%@",row==0?LocalStringWithKey(@"male", "男"):LocalStringWithKey(@"female", "女")];
//    }else if(_index == 2){
//        if (component == 0) {
//            return [NSString stringWithFormat:@"%02ld",(long)(row+1920)];
//        }else{
//            return [NSString stringWithFormat:@"%02ld",(long)(row+1)];
//        }
//    }else if (_index == 3){
//        CGFloat weightP = 0.5 * row+25;
//        return [NSString stringWithFormat:@"%.1f",weightP];
//    }else if (_index == 4){
//        NSInteger weightH = row+50;
//        return [NSString stringWithFormat:@"%ld",(long)weightH];
//    }
    return @"";
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 50;
}


// 当选中了pickerView的某一行的时候调用
// 会将选中的列号和行号作为参数传入
// 只有通过手指选中某一行的时候才会调用
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    //获取对应列，对应行的数据
    //   NSString *name=self.foods[component][row];
    //赋值
//    if (_index == 1){
//        _modifyString = [NSString stringWithFormat:@"%@",row==0?LocalStringWithKey(@"male", "男"):LocalStringWithKey(@"female", "女")];
//    }else if(_index == 2){
//        if (component==0) {
//            year = row+1920;
//        }else if (component == 1){
//            month = row+1;
//        }else{
//            day = row+1;
//        }
//        switch (month) {
//            case 1:case 3:case 5:case 7:case 8:case 10:case 12:
//                _monthTotalDays = 31;
//                break;
//            case 4:case 6:case 9:case 11:
//                _monthTotalDays = 30;
//                break;
//            case 2:
//                _monthTotalDays = year%4==0?29:28;
//                break;
//            default:
//                break;
//        }
//        [pickerView reloadComponent:2];
//        _modifyString = [NSString stringWithFormat:@"%ld-%02ld-%02ld",(long)year,(long)month,(long)day];
//    }else if (_index == 3){
//        _modifyString = [NSString stringWithFormat:@"%.1f",0.5 * row+25];
//    }else if (_index == 4){
//        _modifyString = [NSString stringWithFormat:@"%ld",(long)(row+50)];
//    }
    
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    UIView *myView = [[UIView alloc] init];
//    UILabel *labelOnComponent=[[UILabel alloc] init];
//    if (_index == 1) {
//        //指定视图frame
//        CGFloat height=[self pickerView:pickerView rowHeightForComponent:component];
//        myView.frame=CGRectMake(0, 0, Width/3.0, height);
//        labelOnComponent.textAlignment = NSTextAlignmentCenter;
//        labelOnComponent.frame=myView.frame;
//        labelOnComponent.textColor = [UIColor greenColor];
//        labelOnComponent.text = [NSString stringWithFormat:@"%@",row==0?LocalStringWithKey(@"male", "男"):LocalStringWithKey(@"female", "女")];
//        [myView addSubview:labelOnComponent];
//    }
//    if (_index ==  2) {
//        //取得指定列的宽度
//        //        CGFloat width=[self pickerView:pickerView widthForComponent:component];
//        //取得指定列，行的高度
//        CGFloat height=[self pickerView:pickerView rowHeightForComponent:component];
//        //指定视图frame
//        if (component==0) {
//            myView.frame=CGRectMake(20, 0, Width/3.0-20, height);
//        }else if (component == 1){
//            myView.frame=CGRectMake(0, 0, Width/3.0, height);
//        }else{
//            myView.frame=CGRectMake(-20, 0, Width/3.0, height);}
//        labelOnComponent.textAlignment = NSTextAlignmentCenter;
//        labelOnComponent.frame=myView.frame;
//        labelOnComponent.textColor = [UIColor greenColor];
//        
//        if (component==0) {
//            labelOnComponent.text=[NSString stringWithFormat:@"%ld",(long)(row+1920)];
//        }
//        else if(component==1){
//            labelOnComponent.text=[NSString stringWithFormat:@"%02ld",(long)(row+1)];
//        }
//        else if(component==2){
//            labelOnComponent.text=[NSString stringWithFormat:@"%02ld",(long)(row+1)];
//        }
//        
//        [myView addSubview:labelOnComponent];
//    }
//    if (_index ==  3) {
//        //指定视图frame
//        CGFloat height=[self pickerView:pickerView rowHeightForComponent:component];
//        myView.frame=CGRectMake(0, 0, Width/3.0, height);
//        labelOnComponent.textAlignment = NSTextAlignmentCenter;
//        labelOnComponent.frame=myView.frame;
//        labelOnComponent.textColor = [UIColor greenColor];
//        labelOnComponent.text = [NSString stringWithFormat:@"%.1f",0.5 * row+25];
//        [myView addSubview:labelOnComponent];
//    }
//    if (_index ==  4) {
//        //指定视图frame
//        CGFloat height=[self pickerView:pickerView rowHeightForComponent:component];
//        myView.frame=CGRectMake(0, 0, Width/3.0, height);
//        labelOnComponent.textAlignment = NSTextAlignmentCenter;
//        labelOnComponent.frame=myView.frame;
//        labelOnComponent.textColor = [UIColor greenColor];
//        labelOnComponent.text = [NSString stringWithFormat:@"%ld",(long)(row+50)];
//        [myView addSubview:labelOnComponent];
//    }
//    labelOnComponent.adjustsFontSizeToFitWidth = YES;
//    labelOnComponent.textColor = [UIColor blackColor];
//    labelOnComponent.font = [UIFont fontWithName:NumberFontName size:35];
    return myView;
    
}

@end
