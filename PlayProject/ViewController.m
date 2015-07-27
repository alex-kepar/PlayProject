//
//  ViewController.m
//  PlayProject
//
//  Created by Oleksandr Kiporenko on 7/27/15.
//  Copyright (c) 2015 Oleksandr Kiporenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *sizeFontLabel;
@property (weak, nonatomic) IBOutlet UILabel *leftTextLabel;
@property (weak, nonatomic) IBOutlet UIStepper *sizeFontStepper;
//@property (weak, nonatomic) IBOutlet UITextField *newValueTextField;
@property (weak, nonatomic) IBOutlet UITextField *textValue;
@property (weak, nonatomic) IBOutlet UITextField *countText;
@property (weak, nonatomic) IBOutlet UILabel *rightTextLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.sizeFontStepper.minimumValue = 15;
    self.sizeFontStepper.maximumValue = 34;
    self.sizeFontStepper.stepValue = 1;
    self.sizeFontStepper.value = self.leftTextLabel.font.pointSize;
    self.sizeFontLabel.text = [NSString stringWithFormat:@"%1.1f", self.sizeFontStepper.value];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)stepperAction:(UIStepper *)sender {
    UIFont *newFont = [self.leftTextLabel.font fontWithSize:sender.value];
    [self.leftTextLabel setFont:newFont];
    self.sizeFontLabel.text = [NSString stringWithFormat:@"%1.1f", self.sizeFontStepper.value];
}

- (IBAction)applyButton:(UIButton *)sender {
    self.leftTextLabel.text = self.textValue.text;
}
- (IBAction)countButton:(id)sender {
    self.rightTextLabel.text = self.countText.text;
}
@end
