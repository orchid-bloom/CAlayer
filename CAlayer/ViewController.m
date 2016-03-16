//
//  ViewController.m
//  CAlayer
//
//  Created by tianXin on 16/3/16.
//  Copyright © 2016年 tianXin. All rights reserved.
//

#import "ViewController.h"
#import "TXCABasicAnimationController.h"
#import "TXImageCropController.h"
#import "TXMoveCircleLayerController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSArray *datSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, self.view.bounds.size.width,  self.view.bounds.size.height)];
    [self.view addSubview:tableView];
    tableView.delegate = self;
    tableView.dataSource = self;
    
    
    self.datSource = @[[[TXMoveCircleLayerController alloc] initWithTitle:@"移动圆形图层"],
                       [[TXImageCropController alloc] initWithTitle:@"图片裁剪图层"],
                       [[TXCABasicAnimationController alloc] initWithTitle:@"CABasicAnimation动画学习"],
                       ];
}

#pragma mark - UITableViewDataSource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"UITableViewCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    UIViewController *controller = self.datSource[indexPath.row];
    cell.textLabel.text = controller.title;
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.datSource.count;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *controller = self.datSource[indexPath.row];
    
    [self.navigationController pushViewController:controller animated:YES];
}
@end
