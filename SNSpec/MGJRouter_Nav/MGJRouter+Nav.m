//
//  MGJRouter+Nav.m
//  MGJRouter
//
//  Created by Sunny on 28/6/18.
//

#import "MGJRouter+Nav.h"
#import <objc/runtime.h>

static NSString *navControllerWithSetterGetterKey = @"navControllerWithSetterGetterKey";

@interface MGJRouter ()

@property(nonatomic,strong)UINavigationController *navController;

@end

@implementation MGJRouter (Nav)


+(void)setupNavController:(UINavigationController *)navController{
  MGJRouter * rounterShare = (MGJRouter *)  [MGJRouter performSelector:NSSelectorFromString(@"sharedInstance")];
    if([navController isKindOfClass:[UINavigationController class]]){
        rounterShare.navController = navController ;
    }else{
        rounterShare.navController = nil;
    }
    
}

+(UINavigationController *)navController{
    MGJRouter * rounterShare = (MGJRouter *)  [MGJRouter performSelector:NSSelectorFromString(@"sharedInstance")];
    UINavigationController * nav = rounterShare.navController ;
    if([nav isKindOfClass:[UINavigationController class]]){
        return  nav;
    }
    return  nil;
}

-(void)setNavController:(UINavigationController *)navController{
     objc_setAssociatedObject(self, &navControllerWithSetterGetterKey, navController, OBJC_ASSOCIATION_RETAIN);
}

-(UINavigationController *)navController {
    return objc_getAssociatedObject(self, &navControllerWithSetterGetterKey);
}



@end
