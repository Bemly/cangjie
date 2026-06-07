package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFreetype1109Post(): Post {
    return Post(
        "freetype-1109",
        "freetype矢量字体 —— 介绍篇 - 明明1109 - 博客园",
        "2024-08-13",
        "详细介绍矢量字体的概念、分类，以及如何使用FreeType字体引擎在嵌入式LCD上显示矢量字体。",
        { b =>
            h2(b, "矢量字体概述")
            p(b, "点阵字库显示英文字母和汉字时，大小固定，如果放大或缩小，会出现模糊、锯齿等现象。为了解决该问题，可以使用矢量字体（Vector font），也叫Outline font，即轮廓字体。矢量字体的形成过程包括3步：确定关键点，使用数学曲线（贝塞尔曲线）连接关键点，填充闭合曲线内部空间。由于关键点的相对位置不变，即时放大或缩小字体都不会变形或出现锯齿。")
            h2(b, "矢量字体分类")
            p(b, "矢量字体主要包括Type1、TrueType、OpenType等几类。Type1由Adobe于1985年提出，基于PDL标准，使用三次贝塞尔曲线描述字形，特点是打印时不会产生变形，但属于非开放字体，Adobe对其征收高额使用费。")
            p(b, "TrueType是Apple与Microsoft于1991年联合提出的矢量字体标准，使用二次贝塞尔曲线描述字形。OpenType是Type1与TrueType之争的最终产物，由Adobe与Microsoft于1995年联手开发，兼容两者并支持Unicode。")
            h2(b, "FreeType字体引擎")
            p(b, "FreeType是一个免费、可移植的字体引擎开源库，提供统一接口来访问多种字体格式。字符图像称为glyph（关键点），单个字符可以拥有几个不同的图像，存在于字体文件中。字体文件头部的charmaps（字符映射表）包含支持哪些编码的信息，通过编码值可以找到对应的glyph。")
            h2(b, "FreeType显示文字流程")
            p(b, "使用FreeType库显示文字的基本流程为：1）包含头文件ft2build.h；2）初始化FT_Init_FreeType；3）加载字体文件FT_New_Face；4）设置字体大小FT_Set_Char_Size或FT_Set_Pixel_Size；5）根据编码值找到glyph索引FT_Get_Char_Index；6）加载glyph图像FT_Load_Glyph；7）转换为位图FT_Render_Glyph；8）显示在LCD上。")
            p(b, "其中步骤5、6、7可以用一个函数FT_Load_Char(face, charcode, FT_LOAD_RENDER)替代，直接得到glyph对应的bitmap。bitmap数据保存在slot->bitmap中，是一个width×rows的二维像素矩阵，每个像素点占用1字节。")
            h2(b, "在LCD上显示矢量字体")
            p(b, "要在LCD上显示内容，需要获取LCD对应的Framebuffer缓存，然后修改对应位置的像素点RGB值。自定义draw_bitmap函数遍历bitmap的每个像素，通过lcd_put_pixel函数将像素值写入framebuffer对应位置。")
            p(b, "编译时需要链接freetype库：arm-linux-gnuabihf-gcc -o freetype_show_font freetype_show_font.c -lfreetype。运行时需将目标程序与字体文件（如simsun.ttc）放在同一目录下。")
            p(b, "文章还介绍了如何使用FreeType显示一行文字，涉及LCD坐标系与笛卡尔坐标的转换、每个字符大小可能不同的处理、计算一行文字外框等内容。涉及的重要数据结构包括FT_Library、FT_Face、FT_GlyphSlot、FT_Glyph、FT_BBox。")
            a(b, attrs("href", "https://www.cnblogs.com/fortunely/p/16651504.html"), "阅读原文 - 博客园")
        }
    )
}
