//
//  SNOrderController.m
//  MGJRouter
//
//  Created by Sunny on 28/6/18.
//

#import "SNOrderController.h"
#import "MGJRouter.h"
#import "AppDelegate.h"

@interface SNOrderController ()

@end

@implementation SNOrderController

+(void)load{
    [MGJRouter registerURLPattern:@"sn://order" toHandler:^(NSDictionary *routerParameters) {
        UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
        UINavigationController *nav = (UINavigationController *) [story instantiateInitialViewController];
        
        AppDelegate *app = (AppDelegate *)[UIApplication  sharedApplication].delegate;
//        app.navCtr = self.navigationController;
        nav = app.
        
        
        SNOrderController *snOrderCtr = [[SNOrderController alloc] init];
//        [nav pushViewController:snOrderCtr animated:YES];
        
    }];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
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
