//
//  MGJRouter+Nav.m
//  MGJRouter
//
//  Created by Sunny on 28/6/18.
//

#import "MGJRouter+Nav.h"
#import <objc/runtime.h>

static NSString *navControllerWithSetterGetterKey = @"navControllerWithSetterGetterKey";

@implementation MGJRouter (Nav)

-(void)setNavController:(UINavigationController *)navController{
     objc_setAssociatedObject(self, &navControllerWithSetterGetterKey, navControllerWithSetterGetterKey, OBJC_ASSOCIATION_RETAIN);
}

-(UINavigationController *)navController {
    return objc_getAssociatedObject(self, &navControllerWithSetterGetterKey);
}




//@implementation Programmer (Category)
//
//- (void)setNameWithSetterGetter:(NSString *)nameWithSetterGetter {
//    objc_setAssociatedObject(self, &nameWithSetterGetterKey, nameWithSetterGetter, OBJC_ASSOCIATION_COPY);
//}
//- (NSString *)nameWithSetterGetter {
//    return objc_getAssociatedObject(self, &nameWithSetterGetterKey);
//}



@end
