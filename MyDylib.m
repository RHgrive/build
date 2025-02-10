#import <UIKit/UIKit.h>

void showAlert() {
    dispatch_async(dispatch_get_main_queue(), ^{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Hello"
                                                                       message:@"This is a test alert."
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        
        [alert addAction:defaultAction];
        
        // アプリのウィンドウを取得してアラートを表示
        UIWindow *window = UIApplication.sharedApplication.delegate.window;
        [window.rootViewController presentViewController:alert animated:YES completion:nil];
    });
}
