#import "UIScreen+GNAdditions.h"
#import "AppDelegate.h"

@implementation UIScreen (GNAdditions)

- (CGFloat)heightWithoutNavigationBar {
    CGFloat screenHeight = self.applicationFrame.size.height;
    screenHeight -= [self navigationBarHeight];
    return screenHeight;
}

- (CGFloat)navigationBarHeight {
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    UINavigationController *navController = (UINavigationController *)appDelegate.window.rootViewController;
    return navController.navigationBar.frame.size.height;
}

@end
