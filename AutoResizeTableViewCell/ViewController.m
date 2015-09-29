//
//  ViewController.m
//  AutoResizeTableViewCell
//
//  Created by dullgrass on 15/9/25.
//  Copyright © 2015年 dullgrass. All rights reserved.
//

#import "ViewController.h"
#import "DGTypeOneCell.h"
@interface ViewController ()

@property (nonatomic, strong) NSArray *titleArray;
@property (nonatomic, strong) NSArray *subTitleArray;

@property (weak, nonatomic) IBOutlet UITableView *tableView;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _titleArray = @[@"夏季商品夏季商品夏季商品夏季商品夏季商品夏季商品夏季商品夏季商品夏季商品夏季商品夏季商品夏季商品夏季商品",@"夏季商品夏季商品夏季商品夏季商品夏季商品夏季商品夏季商品",@"夏季商品夏季商品",@"夏季商品",@"夏季商品"];
    _subTitleArray = @[@"夏季商品",@"夏季商品",@"夏季商品夏季商品夏季商品",@"夏季商品夏季商品夏季商品夏季商品夏季商品夏季商品夏季商品",@"夏季商品"];

    _tableView.estimatedRowHeight = 160;
    _tableView.rowHeight = UITableViewAutomaticDimension;
}


- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
    
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _titleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *typeOneCellIdentifier = @"DGTypeOneCell";
    DGTypeOneCell *cell = [tableView dequeueReusableCellWithIdentifier:typeOneCellIdentifier forIndexPath:indexPath];
    if (!cell) {
        cell = [[DGTypeOneCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:typeOneCellIdentifier];
    }
    cell.title.text = _titleArray[indexPath.row];
    cell.subTitle.text = _subTitleArray[indexPath.row];
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
