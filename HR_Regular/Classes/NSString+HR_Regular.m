

#import "NSString+HR_Regular.h"

@implementation NSString (HR_Regular)

/** common */
- (BOOL)HR_Regular:(NSString *)regex {
    NSPredicate *predicateRe = [NSPredicate predicateWithFormat:@"self matches %@", regex];
    return [predicateRe evaluateWithObject:self];
}

/** phone number */
- (BOOL)HR_Regular_PhoneNumber {
    NSString *regex = @"^1[3|4|5|7|8][0-9]\\d{8}$";
    NSPredicate *predicateRe = [NSPredicate predicateWithFormat:@"self matches %@", regex];
    return [predicateRe evaluateWithObject:self];
}

/** id card */
- (BOOL)HR_Regular_IDCard {
    NSString *regex = @"\\d{15}(\\d\\d[0-9xX])?";
    NSPredicate *predicateRe = [NSPredicate predicateWithFormat:@"self matches %@", regex];
    return [predicateRe evaluateWithObject:self];
}

/** eamil */
- (BOOL)HR_Regular_Email {
    NSString *regex = @"^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";
    NSPredicate *predicateRe = [NSPredicate predicateWithFormat:@"self matches %@", regex];
    return [predicateRe evaluateWithObject:self];
}

/** all number */
- (BOOL)HR_Regular_AllNumber {
    NSString *regex = @"^[0-9]+$";
    NSPredicate *predicateRe = [NSPredicate predicateWithFormat:@"self matches %@", regex];
    return [predicateRe evaluateWithObject:self];
}

/** url */
- (BOOL)HR_Regular_URL {
    NSString *regex = @"^http(s)?://([\\w-]+\\.)+[\\w-]+(/[\\w-./?%&=]*)?$";
    NSPredicate *predicateRe = [NSPredicate predicateWithFormat:@"self matches %@", regex];
    return [predicateRe evaluateWithObject:self];
}

/** all chinese */
- (BOOL)HR_Regular_AllChinese {
    NSString *regex = @"^[\u4e00-\u9fa5]+$";
    NSPredicate *predicateRe = [NSPredicate predicateWithFormat:@"self matches %@", regex];
    return [predicateRe evaluateWithObject:self];
}

/** all letter */
- (BOOL)HR_Regular_AllLetter {
    NSString *regex = @"^[A-Za-z]+$";
    NSPredicate *predicateRe = [NSPredicate predicateWithFormat:@"self matches %@", regex];
    return [predicateRe evaluateWithObject:self];
}

/** all lowercase */
- (BOOL)HR_Regular_AllLowercase {
    NSString *regex = @"^[a-z]+$";
    NSPredicate *predicateRe = [NSPredicate predicateWithFormat:@"self matches %@", regex];
    return [predicateRe evaluateWithObject:self];
}

/** all capital letter */
- (BOOL)HR_Regular_AllCapitalLetter {
    NSString *regex = @"^[A-Z]+$";
    NSPredicate *predicateRe = [NSPredicate predicateWithFormat:@"self matches %@", regex];
    return [predicateRe evaluateWithObject:self];
}

/** contain special character */
- (BOOL)HR_Regular_ContainSpecialCharacter {
    NSString *regex = @"[~`!@#$%^&*':;\"\?=/<>,\\.\\{\\}\\[\\]\\(\\)]+";
    NSPredicate *predicateRe = [NSPredicate predicateWithFormat:@"self matches %@", regex];
    return [predicateRe evaluateWithObject:self];
}

@end
