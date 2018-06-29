//
//  SNDetailController.m
//  MGJRouter
//
//  Created by Sunny on 29/6/18.
//

#import "SNDetailController.h"
#import "MGJRouter+Nav.h"

@interface SNDetailController ()

@end

@implementation SNDetailController

+(void)load{
    [MGJRouter registerURLPattern:@"sn://detail" toHandler:^(NSDictionary *routerParameters) {
        SNDetailController *detailCtr = [[SNDetailController alloc] init];
        [[MGJRouter navController ] pushViewController:detailCtr animated:YES];
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    self.title = @"商品详情";
    // Do any additional setup after loading the view.
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
