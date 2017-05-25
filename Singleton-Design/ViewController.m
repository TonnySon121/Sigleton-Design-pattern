//
//  ViewController.m
//  Singleton-Design
//
//  Created by Tonny Son on 26/05/2017.
//  Copyright © 2017 Tonny Son. All rights reserved.
//

#import "ViewController.h"
#import "DataManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)initTouchUpManager:(id)sender {
    DataManager *dataManagerA = [DataManager sharedManager];
    NSLog(@"Manager A: %@", dataManagerA);
    
    //dataManagerB sẽ trỏ vào cùng địa chỉ với dataManagerA
    DataManager *dataManagerB = [DataManager sharedManager];
    NSLog(@"Manager B: %@", dataManagerB);
}

@end
