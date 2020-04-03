#import "PolynomialConverter.h"

@implementation PolynomialConverter
- (NSString*)convertToStringFrom:(NSArray <NSNumber*>*)numbers {
    
    NSMutableString *str = [[NSMutableString alloc]init];
    
    NSInteger count = numbers.count;
    
    if ([numbers isEqual:@[]]) {
        return nil;
    }
    
    for (int i = 0; i < numbers.count-1; i++) {
        count--;
        int num1 = numbers[i].intValue;
        if (num1 < 0) {
            [str appendFormat:@" - %dx^%ld", numbers[i].intValue * -1, count];
        }
        
        if (num1 > 0) {
            [str appendFormat:@" + %dx^%ld", numbers[i].unsignedIntValue,count];
        }
        
        
    }
    
    if (numbers.lastObject.intValue != 0) {
        [str appendFormat:@" + %@",numbers.lastObject];
    }
    
    return [[[str substringFromIndex:3]stringByReplacingOccurrencesOfString:@"^1" withString:@""]stringByReplacingOccurrencesOfString:@"1x" withString:@"x"];
}

@end
