//
//  ViewController.m
//  MonthPickView
//
//  Created by ChenZiyan on 16/5/12.
//  Copyright © 2016年 ChenZiyan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    monthPicker = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 0, 320, 216)];
    
    monthPicker .delegate = self;
    
    monthPicker.showsSelectionIndicator = YES;
    
    
    NSArray *monthArray = [[NSArray alloc] initWithObjects:@"01",@"02",@"03",@"04",@"05",@"06",@"07",@"08",@"09",@"10",@"11",@"12", nil];
    NSArray *yearArray = [[NSArray alloc] initWithObjects:@"2015",@"2016",@"2017",@"2018",@"2019",@"2020",@"2021",@"2022",@"2023",@"2024",@"2025",@"2026",@"2027",@"2028",@"2029",@"2030",@"2031",@"2032",@"2033",@"2034",@"2035",@"2036",@"2037",@"2038", nil];
    
    
    pickMonth = monthArray;
    pickYaer = yearArray;
    
    
    
    textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    textField.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:textField];
    
    textField.inputView = monthPicker;
   
    UIToolbar *toolBarSelected = [[UIToolbar alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    UIBarButtonItem *selected = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(selectedPicker)];
    toolBarSelected.items = [NSArray arrayWithObject:selected];

    textField.inputAccessoryView = toolBarSelected;
    // Do any additional setup after loading the view, typically from a nib.
}


-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == 0) {
        return [pickYaer count];
    }
    else return [pickMonth count];
}
-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if (component == 0) {
        return  [pickYaer objectAtIndex:row];
    }
    else return [pickMonth objectAtIndex:row];
}

- (void)selectedPicker
{
    if ([self.view endEditing:NO]) {
        NSInteger row1= [monthPicker selectedRowInComponent:0];
        NSString *yearPicked = [pickYaer objectAtIndex:row1];
        NSInteger row2 = [monthPicker selectedRowInComponent:1];
        NSString *monthPicked = [pickMonth objectAtIndex:row2];
        
        NSString *stringForPrint = [yearPicked stringByAppendingString:@"/"];
        NSString *print = [stringForPrint stringByAppendingString:monthPicked];
        textField.text = print;
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
