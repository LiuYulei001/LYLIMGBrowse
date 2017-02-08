//
//  LYLIMGBrowseVC.m
//  LYLIMGBrowse
//
//  Created by Rainy on 2017/2/8.
//  Copyright © 2017年 Rainy. All rights reserved.
//

#import "LYLIMGBrowseVC.h"
#import "LYLIMGScrollView.h"

@interface LYLIMGBrowseVC ()<UIScrollViewDelegate,LYLIMGScrollViewDelegate>

@end

@implementation LYLIMGBrowseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self layoutSubViewsAndItems];
    
    
    
}
-(void)layoutSubViewsAndItems
{
    
    self.view.backgroundColor = [UIColor blackColor];
    
    LYLIMGScrollView *scr = nil;
    
    if (self.imgUrl_array) {
        scr = [[LYLIMGScrollView alloc]initWithImgURLs:self.imgUrl_array withIndexPage:self.page_number];
    } else {
        scr = [[LYLIMGScrollView alloc]initWithImgs:self.img_array withIndexPage:self.page_number];
    }
    
    
    scr.LYLScrDelegate = self;
    
    [self.view addSubview:scr];
    
    if (self.img_array.count > 1 || self.imgUrl_array.count > 1) {
        [self.view addSubview:(UIView *)scr.pageControl];
    }
    
}

-(void)touchedImageViewAction:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
