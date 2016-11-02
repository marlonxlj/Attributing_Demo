//
//  ViewController.m
//  Attributing_Demo
//
//  Created by m on 16/7/21.
//  Copyright © 2016年 XLJ. All rights reserved.
//
// 富文本-行间距问题、对齐方式
// 富文本的基本学习demo
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self testDemo];
}

- (void)testDemo
{
    UILabel *testLable = [[UILabel alloc] initWithFrame:CGRectMake(10, 50, self.view.frame.size.width, self.view.frame.size.height)];
    
    [self.view addSubview:testLable];
    testLable.numberOfLines = 0;
    
    
    NSString *str = @"明月当空，隐隐约约听到低吟，似有若无。面对大千世界的奢华糜烂，还不如在这一方小城，静静品一杯茗香。只是，经历了人间的风风雨雨，她早已不是当初那朵出淤泥而不染的莲花。明月当空，隐隐约约听到低吟，似有若无。面对大千世界的奢华糜烂，还不如在这一方小城，静静品一杯茗香。只是，经历了人间的风风雨雨，她早已朵出淤泥而不染的莲花。";
    
    
    NSMutableAttributedString *attStr = [[NSMutableAttributedString alloc] initWithString:str];
    //格式调整
    NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
    /**调行间距*/
    style.lineSpacing = 10;
    
    //字间距
    [attStr addAttribute:NSKernAttributeName value:@5 range:NSMakeRange(0, [str length])];
    //添加行间距
    [attStr addAttribute:NSParagraphStyleAttributeName value:style range:NSMakeRange(0, [str length])];
    
    //横竖排版 ---无效果
//    [attStr addAttribute:NSVerticalGlyphFormAttributeName value:@1 range:NSMakeRange(0, [str length])];
    //下画线
    [attStr addAttribute:NSUnderlineStyleAttributeName value:@1 range:NSMakeRange(0, [str length])];
    //边线宽度
    [attStr addAttribute:NSStrokeWidthAttributeName value:@1 range:NSMakeRange(10, 10)];
    //边线颜色
    [attStr addAttribute:NSStrokeColorAttributeName value:[UIColor redColor] range:NSMakeRange(10, 10)];
    
    //阴影--无效果
    [attStr addAttribute:NSShadowAttributeName value:@4 range:NSMakeRange(20, 10)];
    
    //下划线
    [attStr addAttribute:NSStrikethroughStyleAttributeName value:@2 range:NSMakeRange(20, 10)];
    [attStr addAttribute:NSStrikethroughColorAttributeName value:[UIColor redColor] range:NSMakeRange(20, 10)];
    
    //字体背影色
    [attStr addAttribute:NSBackgroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(45, 10)];
    
    //字体颜色
    [attStr addAttribute:NSForegroundColorAttributeName value:[UIColor orangeColor] range:NSMakeRange(60, 10)];
    
    //段落--无作用
    [attStr addAttribute:NSParagraphStyleAttributeName value:@6 range:NSMakeRange(70, 80)];
    
    //段落设置
    //行高设置与lineSpacing相同，会覆盖前面的值
//    style.lineHeightMultiple = 2.f;
    //最大行高--没有看懂
//    style.maximumLineHeight = 5;
    //没有看懂
//    style.minimumLineHeight = 7;
    
    //设置对齐方式
    //左对齐
//    style.alignment = NSTextAlignmentLeft;
    //中心对齐
//    style.alignment = NSTextAlignmentCenter;
    //右对齐
//    style.alignment = NSTextAlignmentRight;
    //有点左对齐--不是很明白
    //最后一行左对齐
//    style.alignment = NSTextAlignmentJustified;
    //没看出来
//    style.alignment = NSTextAlignmentNatural;

    //首行缩进多少
//    style.firstLineHeadIndent = 40;
    
    //除了首行，其它地方进行缩进多少
    style.headIndent = 30;
    
    //尾部缩进--
//    style.tailIndent = 4;
    //换行方式
    style.lineBreakMode = NSLineBreakByWordWrapping;
    //段距离
    style.paragraphSpacing = 10;
    //段首空间
//    style.paragraphSpacingBefore = 15;
    //可变行高
    style.baseWritingDirection = 20;
    
    //字体加粗
    [attStr addAttribute:NSStrokeWidthAttributeName value:@5 range:NSMakeRange(80, 15)];
    testLable.attributedText = attStr;
 
}

@end
