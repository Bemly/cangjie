package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog691Post(): Post {
    return Post(
        "blog-691",
        "美绩点阵体：(可能是)最完整的开源8×8点阵体 免费商用-猫啃网",
        "2024-08-13",
        "美绩点阵体是一款开源的8×8像素点阵字体，由ItMarki开发，支持简体和繁体中文，采用SIL Open Font License 1.1授权，可免费商用。",
        { b =>
            h2(b, "美绩点阵体：最完整的开源8×8点阵体")
            p(b, "美绩点陣體（MisekiBitmap）是一款开源的8×8像素点阵字体，由中国香港开发者ItMarki制作。该字体可能是目前最完整的开源8×8点阵字体，收录了大量简体和繁体汉字，适合用于像素风格的设计项目。")
            p(b, "字体信息：版本为Version 1.9（2023/07/02），仅提供1个字重。字体名称包括：美績ビットマップ、美績點陣體、美绩点阵体、MisekiBitmap。")
            p(b, "字数覆盖方面，简体中文GB/T 2312标准收录6763字（满分），繁体中文五大码(Big5)收录9002字，通用规范汉字表收录8105字，总汉字数达13949字。同时覆盖了现代汉语常用字表（3500/3500）、现代汉语通用字表（7000/7000）等标准。")
            p(b, "该字体采用SIL Open Font License 1.1授权，这意味着用户可以免费将字体用于私人或商业用途，无需付费也无需作者批准。可以将字体安装进任何支持的设备、软件或APP，并分发或销售包含该字体的软件。也可以从该字体制作衍生字体，但衍生字体必须以同样的SIL Open Font License发行。")
            p(b, "需要注意的限制是：不可单独销售该字体，也不可在SIL Open Font License 1.1以外的授权许可下发行该字体。")
            p(b, "字体来源为GitHub仓库：https://github.com/ItMarki/MisekiBitmap。鳴謝方面，門真なむ提供了原字型，scott0107000的精品點陣體提供了注音符號作為藍本。")
            p(b, "版本更新记录：Ver 1.9（2023/07/02）修改了偺、昝、糌、綹、绺等字形；Ver 1.0（2023/03/11）为首次發佈。")
            p(b, "如果安装后在Photoshop或AI等软件中找不到字体，可尝试搜索其日文名称「美績ビットマップ」。该字体适合用于海报设计、网页UI、像素游戏等需要点阵字体效果的场景。")
            a(b, attrs("href", "https://www.maoken.com/freefonts/19392.html"), "阅读原文 - 猫啃网")
            a(b, attrs("href", "https://github.com/ItMarki/MisekiBitmap"), "GitHub 仓库")
        }
    )
}
