//
//  ViewController.h
//  DEntaku
//
//  Created by lifeistech on 2015/02/22.
//  Copyright (c) 2015年 torasann. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    float number;
    float number2;
    int calc_id;
    BOOL number2_exists;
    IBOutlet UILabel *label;
    NSScanner *scanner;
}

- (IBAction)nine;
- (IBAction)eight;
- (IBAction)seven;
- (IBAction)six;
- (IBAction)five;
- (IBAction)four;
- (IBAction)three;
- (IBAction)two;
- (IBAction)one;
- (IBAction)zero;

- (IBAction)ten;
- (IBAction)eleven;
- (IBAction)twelve;
- (IBAction)thirteen;
- (IBAction)fourteen;
- (IBAction)fifteen;

- (IBAction)plus;
- (IBAction)minus;
- (IBAction)kakeru;
//- (IBAction)waru;

- (IBAction)equal;
- (BOOL)calc;

- (IBAction)clear;

- (IBAction)showten;
- (IBAction)hideten;

@end

