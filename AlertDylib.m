#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

__attribute__((constructor))
static void initialize() {
    dispatch_async(dispatch_get_main_queue(), ^{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Alert from Dylib"
                                                                       message:@"This alert is displayed when the app starts."
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
                                                           style:UIAlertActionStyleDefault
                                                         handler:nil];
        [alert addAction:okAction];

        UIViewController *rootViewController = [[[UIApplication sharedApplication] keyWindow] rootViewController];
        if (rootViewController != nil) {
            [rootViewController presentViewController:alert animated:YES completion:nil];
        }
    });
}
