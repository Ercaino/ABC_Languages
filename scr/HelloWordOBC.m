#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
    }
    return 0;
}

/*
    clang -fobjc-arc -framework Foundation HelloWord.m -o HelloWord
    ./HelloWord
*/


// Simple demo

// Person.h

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;

- (void)sayHello;

@end

// Person.m

#import "Person.h"

@implementation Person

- (void)sayHello {
    NSLog(@"Hello, my name is %@", self.name);
}

@end

// main.m

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc] init];
        person.name = @"Alice";
        [person sayHello];
    }
    return 0;
}