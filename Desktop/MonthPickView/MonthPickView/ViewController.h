//
//  ViewController.h
//  MonthPickView
//
//  Created by ChenZiyan on 16/5/12.
//  Copyright © 2016年 ChenZiyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewAccessibilityDelegate,UIPickerViewDataSource>

{
    UIPickerView *monthPicker;
    NSArray *pickYaer;
    NSArray *pickMonth;
    
    
    
    UITextField *textField;
}


@end

