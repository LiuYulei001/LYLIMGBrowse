# LYLIMGBrowse
图片浏览器：本地及网络图片浏览，可以手势缩放，双击放大单击退出等功能！


使用简单：


LYLIMGBrowseVC *imageBrowseVC = [[LYLIMGBrowseVC alloc] init];


imageBrowseVC.img_array = @[UIImage];//本地图片数组


//imageBrowseVC.imgUrl_array = @[@"https://xxx.png",@"https://yyy.png"];//网络图片接口数组


imageBrowseVC.page_number = 2;//当前图片数组选中的图片下标


imageBrowseVC.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;


[self presentViewController:imageBrowseVC animated:YES completion:nil];
