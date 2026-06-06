package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getR2207happylambbarnPost(): Post {
    return Post(
        "r2207happylambbarn",
        "【R2207】[无修正][安卓][电脑][HappyLambBarn] 悪魔の石板と呪いの犬姫...",
        "2022-03-18",
        "原文待补充：【R2207】[无修正][安卓][电脑][HappyLambBarn] 悪魔の石",
        { b =>
            h2(b, "【R2207】[无修正][安卓][电脑][HappyLambBarn] 悪魔の石板と呪いの犬姫...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://blog.reimu.net/archives/60828"), "阅读原文")
        }
    )
}
