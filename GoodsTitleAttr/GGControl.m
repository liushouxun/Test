//
//  ZzControl.m
//  national
//
//  Created by zhouzhi on 2019/3/12.
//  Copyright © 2019 hhgg. All rights reserved.
//

#import "GGControl.h"

@implementation GGControl

+(UIButton *)getBtnWithImage:(NSString *)imageName andSeletImage:(NSString *)seletImage andTitle:(NSString *)title andSel:(SEL)sel andTarget:(id)target;
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    if (imageName&&imageName.length>0)
    {
        
        [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        
    }
    if (seletImage&&seletImage.length>0)
    {
        
        [btn setImage:[UIImage imageNamed:seletImage] forState:UIControlStateSelected];
        
    }
    if (title&&title.length>0)
    {
        
        [btn setTitle:title forState:UIControlStateNormal];
        
    }
    if (sel &&target)
    {
        
        [btn addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
        
    }
    
    btn.adjustsImageWhenHighlighted = NO;

    return btn;
}
//创建label
+(UILabel *)getLabWithTitle:(NSString *)title andFont:(UIFont *)font andColor:(UIColor *)color
{
    
    UILabel *label = [UILabel new];
    label.text = title;
    label.font = font;
    label.textColor = color;
    return label;
}

+(UIButton*)getButonbWithTitle:(NSString *)title andFont:(UIFont *)font andColor:(UIColor *)color withInsetsL:(UIEdgeInsets)edgeInsets
{
    
    UIButton *btn = [UIButton new];
    [btn setTitle:title forState:0];
    btn.titleLabel.font = font;
    [btn setTitleColor:color forState:0];
    btn.contentEdgeInsets = edgeInsets;
    return btn;
}

+(UIButton *)mw_buttonWithNorTitle:(NSString *)normalTitle andSelTitle:(NSString *)selTitle andNorColor:(UIColor *)norColor andSelColor:(UIColor *)selColor andNorImage:(NSString *)norImageName andSelImage:(NSString *)selImageName {
    
    UIButton *btn = [UIButton new];
    
    [btn setTitle:normalTitle forState:UIControlStateNormal];
    [btn setTitleColor:norColor forState:UIControlStateNormal];
    [btn setTitle:selTitle forState:UIControlStateSelected];
    [btn setTitleColor:selColor forState:UIControlStateSelected];
    
    [btn setImage:[UIImage imageNamed:norImageName] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:selImageName] forState:UIControlStateSelected];
    
    return btn;
}


//创建UIImageView
+(UIImageView *)getImgWithImageName:(NSString *)imageName
{
    UIImageView *img = [UIImageView new];
    if (imageName)
    {
        img.image = [UIImage imageNamed:imageName];
    }
    img.contentMode = UIViewContentModeScaleAspectFill;
    img.clipsToBounds = YES;
    return img;
    
}



//创建输入框
+(UITextField *)getTfWithPlaceHolder:(NSString *)placeHolder andColor:(UIColor *)color andFont:(UIFont *)font
{
    
    UITextField *tf = [UITextField new];
    if (placeHolder)
    {
        tf.placeholder = placeHolder;
    }
    if (color)
    {
        tf.textColor = color;
    }
    if (font)
    {
        tf.font = font;
    }
    return tf;
    
}


+(UIView *)getLineViewWithColor:(UIColor *)color{
    
    UIView *lineView = [[UIView alloc] init];
    lineView.backgroundColor = color;
    return lineView;
}

@end
