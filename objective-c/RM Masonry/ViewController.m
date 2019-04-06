//
//  ViewController.m
//  RM Masonry
//
//  Created by Christopher McKnight on 2/20/18.
//  Copyright © 2018 Christopher McKnight. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIEdgeInsets padding = UIEdgeInsetsMake(50, 50, 10, 10);
    
    UILabel *helloWorld = [UILabel new];
    helloWorld.text = @"Hello World";
    [self.view addSubview:helloWorld];
    
    [helloWorld mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).with.offset(padding.top); //with is an optional semantic filler
        make.left.equalTo(self.view.mas_left).with.offset(padding.left);
        make.bottom.equalTo(self.view.mas_bottom).with.offset(-padding.bottom);
        make.right.equalTo(self.view.mas_right).with.offset(-padding.right);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
