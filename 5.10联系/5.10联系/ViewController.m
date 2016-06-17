//
//  ViewController.m
//  5.10联系
//
//  Created by ma c on 16/5/10.
//  Copyright © 2016年 ccc. All rights reserved.
//

#import "ViewController.h"
#define widthmap     ([UIScreen mainScreen].bounds.size.width-20-6*40)/5

@interface ViewController ()
@property (strong,nonatomic)UIImageView  *iconimage  ;/**头像*/
@property (strong,nonatomic)UIImageView  *rightimage  ;/**顶部右侧图片*/
@property (strong,nonatomic)UIImageView  *baiduimage  ;
/**百度图片*/
@property (strong,nonatomic)UIImageView  *searchimage  ;
/**搜索框*/
@property (strong,nonatomic)UIImageView  *newsimage  ;
/**新闻*/
@property (strong,nonatomic)UIImageView  *readimage  ;
/**小说*/
@property (strong,nonatomic)UIImageView  *vidioimage  ;
/**视频*/
@property (strong,nonatomic)UIImageView  *httpimage  ;
/**网址*/
@property (strong,nonatomic)UIImageView  *tiebaimage  ;
/**贴吧*/
@property (strong,nonatomic)UIImageView  *moreimage  ;
/**更多*/
@property (strong,nonatomic)UILabel *namelable  ;
/**昵称*/


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.iconimage];
    [self.view addSubview:self.rightimage];
    [self.view addSubview:self.baiduimage];
    [self.view addSubview:self.searchimage];
    [self.view addSubview:self.newsimage];
    [self.view addSubview:self.readimage];
    [self.view addSubview:self.vidioimage];
    [self.view addSubview:self.httpimage];
    [self.view addSubview:self.tiebaimage];
    [self.view addSubview:self.moreimage];
    [self.view addSubview:self.namelable];
    NSLog(@"ghhh");
    [self addLayout];
    
    
    
}
- (void)addLayout{
    __weak typeof(self) weakself = self;
    
   // _iconimage.mas_left
    [_iconimage mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.size.mas_equalTo(CGSizeMake(40, 40));
        make.left.mas_equalTo(weakself.view.mas_left).offset(10);
        make.top.mas_equalTo(weakself.view.mas_top).offset(30);
        }];
    [_namelable mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.size.mas_equalTo(CGSizeMake(weakself.view.bounds.size.width-150, 18));
        make.left.mas_equalTo(weakself.iconimage.mas_right).offset(5);
        make.centerY.mas_equalTo(weakself.iconimage.mas_centerY).offset(0);
        
    }];
    
    [_rightimage mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.size.mas_equalTo(CGSizeMake(40, 40));
        make.centerY.mas_equalTo(weakself.iconimage.mas_centerY);
        make.right.mas_equalTo(weakself.view.mas_right).offset(-10);
        }];
    [_baiduimage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(weakself.view.mas_centerX);
        make.top.mas_equalTo(weakself.iconimage.mas_bottom).offset(30);
        make.size.mas_equalTo(CGSizeMake(200, 70));
    }];
    [_searchimage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakself.baiduimage.mas_bottom).offset(15);
        make.left.mas_equalTo(weakself.view.mas_left).offset(10);
        make.right.mas_equalTo(weakself.view.mas_right).offset(-10);
    }];
    [_newsimage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakself.searchimage.mas_bottom).offset(15);
        make.size.mas_equalTo(CGSizeMake(40, 40));
        make.left.mas_equalTo(weakself.view.mas_left).offset(10);
        
    }];
    [_readimage mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(weakself.newsimage.mas_top);
        make.size.mas_equalTo(CGSizeMake(40, 40));
        make.left.mas_equalTo(weakself.newsimage.mas_right).offset(widthmap);
    }];
    [_vidioimage mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(weakself.readimage.mas_top);
        make.size.mas_equalTo(CGSizeMake(40, 40));
        make.left.mas_equalTo(weakself.readimage.mas_right).offset(widthmap);
    }];
    [_httpimage mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(weakself.readimage.mas_top);
        make.size.mas_equalTo(CGSizeMake(40, 40));
        make.left.mas_equalTo(weakself.vidioimage.mas_right).offset(widthmap);
    }];
    
    [_tiebaimage mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(weakself.readimage.mas_top);
        make.size.mas_equalTo(CGSizeMake(40, 40));
        make.left.mas_equalTo(weakself.httpimage.mas_right).offset(widthmap);
    }];
    [_moreimage mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.mas_equalTo(weakself.readimage.mas_top);
        make.size.mas_equalTo(CGSizeMake(40, 40));
        make.left.mas_equalTo(weakself.tiebaimage.mas_right).offset(widthmap);
    }];
    


    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UIImageView *)iconimage
{
    if (!_iconimage) {
        _iconimage = [[UIImageView alloc]initWithImage:[UIImage imageNamed: @"头像"]];
    }
    
    return _iconimage;
    
}
- (UIImageView *)rightimage
{
    if (!_rightimage) {
        _rightimage = [[UIImageView alloc]initWithImage:[UIImage imageNamed: @"皮肤"]];
    }
    
    return _rightimage;
    
}
- (UIImageView *)baiduimage
{
    if (!_baiduimage) {
        _baiduimage = [[UIImageView alloc]initWithImage:[UIImage imageNamed: @"百度图标"]];
    }
    
    return _baiduimage;
    
}
- (UIImageView *)searchimage
{
    if (!_searchimage) {
        _searchimage = [[UIImageView alloc]initWithImage:[UIImage imageNamed: @"搜索框"]];
    }
    
    return _searchimage;
    
}

- (UIImageView *)newsimage
{
    if (!_newsimage) {
        _newsimage = [[UIImageView alloc]initWithImage:[UIImage imageNamed: @"新闻"]];
    }
    
    return _newsimage;
    
}
- (UIImageView *)readimage
{
    if (!_readimage) {
        _readimage = [[UIImageView alloc]initWithImage:[UIImage imageNamed: @"小说"]];
    }
    
    return _readimage;
    
}
- (UIImageView *)vidioimage
{
    if (!_vidioimage) {
        _vidioimage = [[UIImageView alloc]initWithImage:[UIImage imageNamed: @"视频"]];
    }
    
    return _vidioimage;
    
}

- (UIImageView *)httpimage
{
    if (!_httpimage) {
        _httpimage = [[UIImageView alloc]initWithImage:[UIImage imageNamed: @"网址"]];
    }
    
    return _httpimage;
    
}
- (UIImageView *)tiebaimage
{
    if (!_tiebaimage) {
        _tiebaimage = [[UIImageView alloc]initWithImage:[UIImage imageNamed: @"贴吧"]];
    }
    
    return _tiebaimage;
    
}
- (UIImageView *)moreimage
{
    if (!_moreimage) {
        _moreimage = [[UIImageView alloc]initWithImage:[UIImage imageNamed: @"更多"]];
    }
    
    return _moreimage;
    
}
- (UILabel *)namelable
{
    if (!_namelable) {
        _namelable = [[UILabel alloc]init];
        _namelable.text = @"今天是五月十号";
        _namelable.textAlignment = NSTextAlignmentLeft;
        _namelable.textColor = [UIColor grayColor];
    }
    
    return _namelable;
    
}


@end
