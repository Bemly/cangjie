package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog292Post(): Post {
    return Post(
        "blog-292",
        "陀螺仪目标角度与当前角度偏差计算_陀螺仪计算出真实的坡度角的方法-CSDN博客",
        "2024-04-07",
        "原文待补充：陀螺仪目标角度与当前角度偏差计算_陀螺仪计算出真实的坡度角的方法-CSDN博客",
        { b =>
            h2(b, "陀螺仪目标角度与当前角度偏差计算_陀螺仪计算出真实的坡度角的方法-CSDN博客")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.csdn.net/m0_73803270/article/details/132152952"), "阅读原文")
        }
    )
}
