//
//  ZzControl.h
//  national
//
//  Created by zhouzhi on 2019/3/12.
//  Copyright © 2019 hhgg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GGControl : NSObject

/**
 button 创建方式一

 @param imageName <#imageName description#>
 @param seletImage <#seletImage description#>
 @param title <#title description#>
 @param sel <#sel description#>
 @param target <#target description#>
 @return <#return value description#>
 */
+(UIButton *)getBtnWithImage:(NSString *)imageName andSeletImage:(NSString *)seletImage andTitle:(NSString *)title andSel:(SEL)sel andTarget:(id)target;

/**
 button 创建方式二

 @param normalTitle <#normalTitle description#>
 @param selTitle <#selTitle description#>
 @param norColor <#norColor description#>
 @param selColor <#selColor description#>
 @param norImageName <#norImageName description#>
 @param selImageName <#selImageName description#>
 @return <#return value description#>
 */
+(UIButton *)mw_buttonWithNorTitle:(nullable NSString *)normalTitle andSelTitle:(nullable NSString *)selTitle andNorColor:(nullable UIColor *)norColor andSelColor:(nullable UIColor *)selColor andNorImage:(nullable NSString *)norImageName andSelImage:(nullable NSString *)selImageName;

 /**
  Label

  @param title <#title description#>
  @param font <#font description#>
  @param color <#color description#>
  @return <#return value description#>
  */
 +(UILabel *)getLabWithTitle:(NSString *)title andFont:(UIFont *)font andColor:(UIColor *)color;

/**
 ImageView

 @param imageName <#imageName description#>
 @return <#return value description#>
 */
+(UIImageView *)getImgWithImageName:(NSString *)imageName;


/**
 textField

 @param placeHolder <#placeHolder description#>
 @param color <#color description#>
 @param font <#font description#>
 @return <#return value description#>
 */
+(UITextField *)getTfWithPlaceHolder:(NSString *)placeHolder andColor:(UIColor *)color andFont:(UIFont *)font;


+(UIButton*)getButonbWithTitle:(NSString *)title andFont:(UIFont *)font andColor:(UIColor *)color withInsetsL:(UIEdgeInsets)edgeInsets;





+(UIView *)getLineViewWithColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
