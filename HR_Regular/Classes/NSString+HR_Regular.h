

#import <Foundation/Foundation.h>

@interface NSString (HR_Regular)

/** common */
- (BOOL)HR_Regular:(NSString *)regex;

/** phone number */
- (BOOL)HR_Regular_PhoneNumber;

/** id card */
- (BOOL)HR_Regular_IDCard;

/** eamil */
- (BOOL)HR_Regular_Email;

/** all number */
- (BOOL)HR_Regular_AllNumber;

/** url */
- (BOOL)HR_Regular_URL;

/** all chinese */
- (BOOL)HR_Regular_AllChinese;

/** all letter */
- (BOOL)HR_Regular_AllLetter;

/** all lowercase */
- (BOOL)HR_Regular_AllLowercase;

/** all capital letter */
- (BOOL)HR_Regular_AllCapitalLetter;

/** contain special character */
- (BOOL)HR_Regular_ContainSpecialCharacter;

@end
