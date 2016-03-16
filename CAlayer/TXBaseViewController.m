//
//  TXBaseViewController.m
//  CAlayer
//
//  Created by tianXin on 16/3/16.
//  Copyright © 2016年 tianXin. All rights reserved.
//

#import "TXBaseViewController.h"

@interface TXBaseViewController ()

@end

@implementation TXBaseViewController

- (instancetype)initWithTitle:(NSString *)title {
    if (self = [super init]) {
        self.title = title;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.view.backgroundColor = [UIColor whiteColor];
}

@end
