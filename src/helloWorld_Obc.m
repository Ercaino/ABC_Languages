/*
 * Objective-C Hello World
 * Requirements: GNUStep (Linux/Windows) or Xcode (macOS)
 * Execution: 
 *   macOS: clang -framework Foundation helloWorld_Obc.m -o helloWorld_Obc && ./helloWorld_Obc
 *   Linux: gcc `gnustep-config --objc-flags` -o helloWorld_Obc helloWorld_Obc.m `gnustep-config --base-libs` && ./helloWorld_Obc
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    // @autoreleasepool is used for memory management in Objective-C
    @autoreleasepool {
        // NSLog prints the string along with a timestamp and process information
        NSLog(@"Hello, World!");
    }
    return 0;
}
