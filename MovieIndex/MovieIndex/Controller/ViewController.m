//
//  ViewController.m
//  MovieIndex
//
//  Created by 谢朝森 on 16/5/19.
//  Copyright (c) 2016年 xcs. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "MJExtension.h"
#import "MovieModel.h"


@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
/**
 *  搜索框
 */
@property(nonatomic, weak)UISearchBar * search;

/**
 *  影视tableVie
 */
@property(nonatomic, strong)UITableView* movieTable;

/**
 *  模型数组（每一个元素都是一个影片模型）
 */
@property(nonatomic, strong)NSMutableArray* MovieModelArray;

@end

@implementation ViewController

/**
 *  懒加载
 */
- (NSMutableArray *)MovieModelArray {
    if (!_MovieModelArray) {
        self.MovieModelArray = [NSMutableArray array];
    }
    return _MovieModelArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /**
     *  页面控件
     */
    [self setUI];
    
    /**
     *  加载数据
     */
    [self loadData];
    
}

- (void)loadData {
//    发送网络请求
    AFHTTPRequestOperationManager *manger = [AFHTTPRequestOperationManager manager];
    
//    拼接参数
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[@"key"] = @"2bc79e74082fb2b7678356f46f271d84";
    [manger POST:@"http://api2.juheapi.com/video/query" parameters:dict success:^(AFHTTPRequestOperation *operation, id responseObject) {
       self.MovieModelArray = [MovieModel mj_objectArrayWithKeyValuesArray:responseObject[@"result"]];
//        NSLog(@"self.MovieModelArray----%@",self.MovieModelArray);
//        刷新表格数据
        [self.movieTable reloadData];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];
    
}

/**
 *  页面控件
 */
- (void)setUI {
    CGSize size = [UIScreen mainScreen].bounds.size;
    UISearchBar *searchView = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 20, size.width, 44)];
    //    修改搜索框的背景颜色
    searchView.barTintColor = [UIColor whiteColor];
    searchView.placeholder = @"请输入需要查询的影片名";
    [self.view addSubview:searchView];
    self.search = searchView;
    
//     tableView
    CGFloat y = CGRectGetMaxY(searchView.frame);
    UITableView *movieTable = [[UITableView alloc] initWithFrame:CGRectMake(0, y, size.width, size.height) style:UITableViewStylePlain];
//    设置数据源和代理
    movieTable.dataSource = self;
    movieTable.delegate = self;
    [self.view addSubview:movieTable];
    self.movieTable = movieTable;
}

/**
 *  数据源方法
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.MovieModelArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
//    取出模型
    MovieModel *model = self.MovieModelArray[indexPath.row];
    NSLog(@"model ---%@",model.desc);
    cell.textLabel.text = model.title;
    
    return cell;
}
@end
