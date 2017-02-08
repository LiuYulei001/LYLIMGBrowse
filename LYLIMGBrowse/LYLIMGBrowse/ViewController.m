//
//  ViewController.m
//  LYLIMGBrowse
//
//  Created by Rainy on 2017/2/8.
//  Copyright © 2017年 Rainy. All rights reserved.
//

#import "ViewController.h"
#import "LYLIMGBrowseVC.h"

@interface ViewController ()

@property(nonatomic,strong)NSArray *lacalIMG;
@property(nonatomic,strong)NSArray *remoteIMG;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)localIMG:(id)sender {
    
    LYLIMGBrowseVC *imageBrowseVC = [[LYLIMGBrowseVC alloc] init];

    imageBrowseVC.img_array = self.lacalIMG;
    imageBrowseVC.page_number = 2;
    imageBrowseVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:imageBrowseVC animated:YES completion:nil];
    
}
- (IBAction)remoteIMG:(id)sender {
    
    LYLIMGBrowseVC *imageBrowseVC = [[LYLIMGBrowseVC alloc] init];
    
    imageBrowseVC.imgUrl_array = self.remoteIMG;
    imageBrowseVC.page_number = 0;
    imageBrowseVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:imageBrowseVC animated:YES completion:nil];
    
}
-(NSArray *)lacalIMG
{
    if (!_lacalIMG) {
        _lacalIMG = @[[UIImage imageNamed:@"WechatIMG91.jpeg"],[UIImage imageNamed:@"WechatIMG92.jpeg"],[UIImage imageNamed:@"WechatIMG93.jpeg"],[UIImage imageNamed:@"WechatIMG94.jpeg"]];
    }
    return _lacalIMG;
}
-(NSArray *)remoteIMG
{
    if (!_remoteIMG) {
        
        _remoteIMG = @[@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1486551219897&di=fd8ed8acb1f4b014d42435ab9176ff33&imgtype=0&src=http%3A%2F%2Fp0.qhimg.com%2Ft0175e60476f3445717.png",@"http://img02.tooopen.com/images/20150614/tooopen_sy_130377131846.jpg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1486551264771&di=29545e4e9abc1aef8a6e77f6eb1f485b&imgtype=jpg&src=http%3A%2F%2Fimg0.imgtn.bdimg.com%2Fit%2Fu%3D4074262111%2C528142846%26fm%3D214%26gp%3D0.jpg",@"http://www.wallcoo.com/animal/Dogs_Summer_and_Winter/wallpapers/1920x1200/DogsB10_Lucy.jpg",@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1486551219896&di=e0220e8740adae2fa4565015b5300c35&imgtype=0&src=http%3A%2F%2Fwww.0938xx.com%2Ftupians%2Fbd11084334.jpg"];
    }
    return _remoteIMG;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
