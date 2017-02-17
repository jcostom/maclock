// Code Found here: http://apple.stackexchange.com/questions/80058/lock-screen-command-one-liner

#import <objc/runtime.h>
#import <Foundation/Foundation.h>

int main () {
    NSBundle *bundle = [NSBundle bundleWithPath:@"/Applications/Utilities/Keychain Access.app/Contents/Resources/Keychain.menu"];
    Class principalClass = [bundle principalClass];
    id instance = [[principalClass alloc] init];
    [instance performSelector:@selector(_lockScreenMenuHit:) withObject:nil];
    return 0;
}
