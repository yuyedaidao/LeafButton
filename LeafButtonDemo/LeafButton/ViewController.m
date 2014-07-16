//
//  ViewController.m
//  LeafButton
//
//  Created by Wang on 14-7-16.
//  Copyright (c) 2014年 Wang. All rights reserved.
//

#import "ViewController.h"
#import "LeafButton.h"

@interface ViewController ()
- (IBAction)inside:(id)sender;
- (IBAction)outside:(id)sender;
- (IBAction)down:(id)sender;
- (IBAction)downrepeat:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    LeafButton *button = [[LeafButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    button.tag = 100;
    button.center = self.view.center;
    [button setClickedBlock:^(LeafButton *button) {
        NSLog(@"我被点中了");
    }];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)inside:(id)sender {
    NSLog(@"%@",NSStringFromSelector(_cmd));
    LeafButton *button = (LeafButton *)[self.view viewWithTag:100];
    if(button.type==LeafButtonTypeVideo){
        button.state = LeafButtonStateNormal;
    }
    [button setType:(button.type+1)%2];
    
}

- (IBAction)outside:(id)sender {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (IBAction)down:(id)sender {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (IBAction)downrepeat:(id)sender {
    NSLog(@"%@",NSStringFromSelector(_cmd));
}
@end
