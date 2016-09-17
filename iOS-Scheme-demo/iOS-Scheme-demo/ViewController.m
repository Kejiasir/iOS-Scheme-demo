//
//  ViewController.m
//  iOS-Scheme-demo
//
//  Created by Arvin on 16/9/17.
//  Copyright © 2016年 Arvin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, assign) NSInteger index;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.index = 0;
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)btnClick:(UIButton *)sender {
    NSString *schemeStr = nil;
    self.index++;
    switch (self.index) {
        case 1: // 关于本机
            schemeStr = @"prefs:root=General&path=About";
            break;
        case 2: // 辅助功能
            schemeStr = @"prefs:root=General&path=ACCESSIBILITY";
            break;
        case 3: // 飞行模式
            schemeStr = @"prefs:root=AIRPLANE_MODE";
            break;
        case 4: // 通用
            schemeStr = @"prefs:root=General&path=AUTOLOCK";
            break;
        case 5: // 通用
            schemeStr = @"prefs:root=General&path=USAGE/CELLULAR_USAGE";
            break;
        case 6: // 通用
            schemeStr = @"prefs:root=Brightness";
            break;
        case 7: // 通用
            schemeStr = @"prefs:root=General&path=Bluetooth";
            break;
        case 8: // 日期与时间
            schemeStr = @"prefs:root=General&path=DATE_AND_TIME";
            break;
        case 9: // FaceTime
            schemeStr = @"prefs:root=FACETIME";
            break;
        case 10: // 通用
            schemeStr = @"prefs:root=General";
            break;
        case 11: // 键盘
            schemeStr = @"prefs:root=General&path=Keyboard";
            break;
        case 12: // iCloud
            schemeStr = @"prefs:root=CASTLE";
            break;
        case 13: // 存储空间
            schemeStr = @"prefs:root=CASTLE&path=STORAGE_AND_BACKUP";
            break;
        case 14: // 语言与地区
            schemeStr = @"prefs:root=General&path=INTERNATIONAL";
            break;
        case 15: // 定位服务
            schemeStr = @"prefs:root=LOCATION_SERVICES";
            break;
        case 16: // 邮件.通讯录.日历
            schemeStr = @"prefs:root=ACCOUNT_SETTINGS";
            break;
        case 17: // 音乐
            schemeStr = @"prefs:root=MUSIC";
            break;
        case 18: // 音乐
            schemeStr = @"prefs:root=MUSIC&path=EQ";
            break;
        case 19: // 音乐
            schemeStr = @"prefs:root=MUSIC&path=VolumeLimit";
            break;
        case 20: // 通用
            schemeStr = @"prefs:root=General&path=Network";
            break;
        case 21: // 通用
            schemeStr = @"prefs:root=NIKE_PLUS_IPOD";
            break;
        case 22: // 备忘录
            schemeStr = @"prefs:root=NOTES";
            break;
        case 23: // 通知
            schemeStr = @"prefs:root=NOTIFICATIONS_ID";
            break;
        case 24: // 电话
            schemeStr = @"prefs:root=Phone";
            break;
        case 25: // 照片与相机
            schemeStr = @"prefs:root=Photos";
            break;
        case 26: // 描述文件
            schemeStr = @"prefs:root=General&path=ManagedConfigurationList";
            break;
        case 27: // 还原
            schemeStr = @"prefs:root=General&path=Reset";
            break;
        case 28: // 电话铃声
            schemeStr = @"prefs:root=Sounds&path=Ringtone";
            break;
        case 29: // 电话铃声
            schemeStr = @"prefs:root=Safari";
            break;
        case 30: // 通用
            schemeStr = @"prefs:root=General&path=Assistant";
            break;
        case 31: // 声音
            schemeStr = @"prefs:root=Sounds";
            break;
        case 32: // 软件更新
            schemeStr = @"prefs:root=General&path=SOFTWARE_UPDATE_LINK";
            break;
        case 33: // iTunes Store 与 APP Store
            schemeStr = @"prefs:root=STORE";
            break;
        case 34: // Twitter
            schemeStr = @"prefs:root=TWITTER";
            break;
        case 35: // 通用
            schemeStr = @"prefs:root=General&path=USAGE";
            break;
        case 36: // 视频
            schemeStr = @"prefs:root=VIDEO";
            break;
        case 37: // 通用
            schemeStr = @"prefs:root=General&path=Network/VPN";
            break;
        case 38: // 墙纸
            schemeStr = @"prefs:root=Wallpaper";
            break;
        case 39: // WiFi
            schemeStr = @"prefs:root=WIFI";
            break;
        case 40: // 个人热点
            schemeStr = @"prefs:root=INTERNET_TETHERING";
            break;
        default:
            break;
    }
    NSLog(@"%zd",self.index);
    [sender.titleLabel setFont:[UIFont boldSystemFontOfSize:30]];
    [sender setTitle:[NSString stringWithFormat:@"%zd",self.index] forState:UIControlStateNormal];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:schemeStr]];
    if (self.index >= 40) {
        self.index = 0;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
