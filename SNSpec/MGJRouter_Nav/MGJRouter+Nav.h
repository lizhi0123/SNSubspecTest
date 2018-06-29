//
//  MGJRouter+Nav.h
//  MGJRouter
//
//  Created by Sunny on 28/6/18.
//

#import "MGJRouter.h"

@interface MGJRouter (Nav)

@property(nonatomic,strong)UINavigationController *navController;

+(void)setupNavController:(UINavigationController *)navController;

+(UINavigationController *)navController;

@end
