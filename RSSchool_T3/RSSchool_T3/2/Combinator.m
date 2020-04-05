#import "Combinator.h"


@implementation Combinator
- (NSNumber*)chechChooseFromArray:(NSArray <NSNumber*>*)array {
    
    int N = array[0].intValue;
    int K = array[1].intValue;
    
    int r = 1;
    int d;
    if (K > N) return 0;
    for (d = 1; d <= K; d++)
    {
       r *= N--;
       r /= d;
    }

    return [NSNumber numberWithInt:r];
}

@end
