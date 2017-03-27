//
//  ViewController.m
//  DEntaku
//
//  Created by lifeistech on 2015/02/22.
//  Copyright (c) 2015年 torasann. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    number = 0;
    number2 = 0;
    calc_id = 0;
    number2_exists = false;
    label.text = @"0";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nine{
    number = number*16 + 9;
    label.text = [NSString stringWithFormat:@"%X", (int)number];
};
- (IBAction)eight{
    number = number*16 + 8;
    label.text = [NSString stringWithFormat:@"%X", (int)number];
};
- (IBAction)seven{
    number = number*16 + 7;
    label.text = [NSString stringWithFormat:@"%X", (int)number];
};
- (IBAction)six{
    number = number*16 + 6;
    label.text = [NSString stringWithFormat:@"%X", (int)number];
};
- (IBAction)five{
    number = number*16 + 5;
    label.text = [NSString stringWithFormat:@"%X", (int)number];
};
- (IBAction)four{
    number = number*16 + 4;
    label.text = [NSString stringWithFormat:@"%X", (int)number];
};
- (IBAction)three{
    number = number*16 + 3;
    label.text = [NSString stringWithFormat:@"%X", (int)number];
};
- (IBAction)two{
    number = number*16 + 2;
    label.text = [NSString stringWithFormat:@"%X", (int)number];
};
- (IBAction)one{
    number = number*16 + 1;
    label.text = [NSString stringWithFormat:@"%X", (int)number];
    NSLog(@"aaaaa!");
};
- (IBAction)zero{
    number = number*16 + 0;
    label.text = [NSString stringWithFormat:@"%X", (int)number];
};

- (IBAction)ten{
    number = number*16 + 10;
    label.text = [NSString stringWithFormat:@"%X", (int)number];
};
- (IBAction)eleven{
    number = number*16 + 11;
    label.text = [NSString stringWithFormat:@"%X", (int)number];
};
- (IBAction)twelve{
    number = number*16 + 12;
    label.text = [NSString stringWithFormat:@"%X", (int)number];
};
- (IBAction)thirteen{
    number = number*16 + 13;
    label.text = [NSString stringWithFormat:@"%X", (int)number];
};
- (IBAction)fourteen{
    number = number*16 + 14;
    label.text = [NSString stringWithFormat:@"%X", (int)number];
};
- (IBAction)fifteen{
    number = number*16 + 15;
    label.text = [NSString stringWithFormat:@"%X", (int)number];
};

- (IBAction)plus{
    if ([self calc]){
        calc_id = 1;
    }
};
- (IBAction)minus{
    if ([self calc]){
        calc_id = 2;
    }
};
- (IBAction)kakeru{
    if ([self calc]){
        calc_id = 3;
    }
};
//- (IBAction)waru{
//    if ([self calc]){
//        calc_id = 4;
//    }
//};
- (BOOL) calc{
    if (number == 0 && number2_exists == true) {
        return false;
    }
    
    if (number2_exists == false) {
        number2 = number;
        number = 0;
        number2_exists = true;
    } else {
        switch (calc_id) {
            case 1:
                number2 = number2 + number;
                number = 0;
                break;
                
            case 2:
                number2 = number2 - number;
                number = 0;
                break;
                
            case 3:
                number2 = number2 * number;
                number = 0;
                break;
                
            case 4:
                number2 = number2 / number;
                number = 0;
                break;
        }
        label.text = [NSString stringWithFormat:@"%X", (int)number2];
    }
    return true;
};
- (IBAction)equal{
    [self calc];
    number2_exists = false;
    label.text = [NSString stringWithFormat:@"%X", (int)number2];
    number = number2;
    number2 = 0;
}

- (IBAction)clear{
    number = 0;
    number2 = 0;
    calc_id = 0;
    number2_exists = false;
    label.text = @"0";
}

- (IBAction)showten {
    scanner = [NSScanner scannerWithString:label.text];
    unsigned result = 0;
    [scanner scanHexInt:&result];
    label.text = [NSString stringWithFormat:@"%d", (int)result];
};
- (IBAction)hideten {
    label.text = [NSString stringWithFormat:@"%X", [label.text intValue]];
};
@end
