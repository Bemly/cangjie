package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPifuPixelAlignedImplicitFunctionForHighPost(): Post {
    return Post(
        "pifu-pixel-aligned-implicit-function-for-high",
        "PIFu: Pixel-Aligned Implicit Function for High-Resolution Clothed Human Digitization",
        "2023-04-16",
        "PIFu 是一种像素对齐的隐式函数，用于高分辨率穿衣人体数字化重建。",
        { b =>
            h2(b, "PIFu: 像素对齐的隐式函数")
            p(b, "我们引入了 Pixel-aligned Implicit Function (PIFu)，这是一种高度有效的隐式表示，它将 2D 图像的像素与其对应 3D 对象的全局上下文进行局部对齐。使用 PIFu，我们提出了一种端到端的深度学习方法，用于数字化高度精细的穿衣人体，可以从单张图像（或可选地从多张输入图像）推断 3D 表面和纹理。")
            h2(b, "技术特点")
            p(b, "高度精细的形状，如发型、服装及其变化和变形，可以统一方式进行数字化。与现有用于 3D 深度学习的表示相比，PIFu 可以产生高分辨率表面，包括大部分不可见的区域（如人的背部）。特别是，它不同于体素表示那样占用大量内存，可以处理任意拓扑，并且生成的表面与输入图像在空间上对齐。")
            p(b, "此外，虽然以前的技术被设计为处理单张图像或多视图，但 PIFu 可以自然地扩展到任意数量的视图。我们在 DeepFashion 数据集的真实世界图像上展示了高分辨率和鲁棒的重建结果，该数据集包含各种具有挑战性的服装类型。")
            h2(b, "应用场景")
            p(b, "该方法可以数字化复杂的服装变化，如褶皱裙、高跟鞋和复杂发型。形状和纹理可以在大部分不可见的区域（如主体的背面）完全恢复。该方法还可以扩展到多视图输入图像，支持单视图重建、多视图重建和单视图视频重建。")
            h2(b, "论文信息")
            p(b, "论文发表于 ICCV 2019，作者包括 Shunsuke Saito、Zeng Huang、Ryota Natsume、Shigeo Morishima、Angjoo Kanazawa 和 Hao Li，来自南加州大学、早稻田大学和加州大学伯克利分校。该方法在公共基准上实现了最先进的性能，超越了先前从单张图像进行穿衣人体数字化的工作。")
            a(b, attrs("href", "https://shunsukesaito.github.io/PIFu/"), "项目主页")
            a(b, attrs("href", "https://github.com/shunsukesaito/PIFu"), "GitHub 代码")
        }
    )
}
