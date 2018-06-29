//
//  SNOrderController.m
//  MGJRouter
//
//  Created by Sunny on 28/6/18.
//

#import "SNOrderController.h"
#import "MGJRouter.h"
#import "MGJRouter+Nav.h"

@interface SNOrderController ()

@end

@implementation SNOrderController

+(void)load{
    [MGJRouter registerURLPattern:@"sn://order" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *nav = [MGJRouter navController];

        SNOrderController *snOrderCtr = [[SNOrderController alloc] init];
        [nav pushViewController:snOrderCtr animated:YES];
        
    }];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    self.title = @"我的订单";
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(120, 300, 100, 60)];
    btn.backgroundColor = [UIColor yellowColor];
    [btn setTitle:@"商品详情" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.titleLabel.textColor = [UIColor blackColor];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view.
}
-(void)btnClick{
//    @"sn://detail"
    [MGJRouter openURL:@"sn://detail"];
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
