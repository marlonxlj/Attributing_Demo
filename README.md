###★★★★★★★★★Attribut富文本★★★★★★★★★★★★★
---

###在UITextView和UILable的使用中很多的时候会用到富文本。


##UITextView和UILable的区别在于:

★★★★UITextView 当文字大于一定的时候可以进行上下的滚动
★★★★UILable 可以设置长的`Lalbe.number = 0`来设置可以换行，但是当文字大于它整个尺寸的时候就会出现文字显示不完。

```
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


```

###具体的使用请参考DEMO,更多的使用方法还需要您自己亲自去尝试。

####欢迎阅读本文，如有错误之处，请指出我好及时做出调整，谢谢。如果对您有帮助请右上角Star！

##PS:
