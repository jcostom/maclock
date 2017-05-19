// Code Inspired by discussion here:
// http://apple.stackexchange.com/questions/80058/lock-screen-command-one-liner

#import <objc/runtime.h>
#import <Foundation/Foundation.h>

int main (int argc, char *argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    char versionTag[] = "0.3";

    if (argc > 1) {
        // If CLI args given, output version and exit
        printf("%s [%s]: Trigger Immediate Screen Lock.\n", argv[0], versionTag);
    } else {
        // If no CLI args given, trigger screen lock immediately.
        NSBundle *bundle = [NSBundle bundleWithPath:@"/Applications/Utilities/Keychain Access.app/Contents/Resources/Keychain.menu"];
        Class principalClass = [bundle principalClass];
        id instance = [[principalClass alloc] init];
        [instance performSelector:@selector(_lockScreenMenuHit:) withObject:nil];
    }

    [pool drain];
    return 0;
}
