#import "Combinator.h"


@implementation Combinator
- (NSNumber*)chechChooseFromArray:(NSArray <NSNumber*>*)array {
    int m = array[0].intValue;
    int n = array[1].intValue;
    
    for (int i = 1; i < n; i++) {
        long result = [self getBinCoefByN:n andK:i];
        if (m <= result) {
            return [NSNumber numberWithInt:i];
        }
    }
    return nil;
}

    -(long)getBinCoefByN:(long) n andK:(long)k{
        if (k > n) {
            return 0;
        }
            if (n == k) {
                return 1;
            }
            if (k > n - k) {
                k = n - k;
            }
            long c = 1;
            for (long i = 1; i <= k; i++) {
                c *= n--;
                c /= i;
            }
            return c;
}

@end
