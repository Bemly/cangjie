package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getAnimateAnyonePost(): Post {
    return Post(
        "animate-anyone",
        "Animate Anyone",
        "2024-01-07",
        "阿里巴巴提出的角色动画框架，从静态图像生成角色视频",
        { b =>
            h2(b, "Animate Anyone: Consistent and Controllable Image-to-Video Synthesis for Character Animation")
            p(b, "作者：Li Hu, Xin Gao, Peng Zhang, Ke Sun, Bang Zhang, Liefeng Bo — 阿里巴巴集团智能计算研究院。")
            p(b, "Character Animation旨在通过驱动信号从静态图像生成角色视频。目前，扩散模型凭借其强大的生成能力已成为视觉生成研究的主流。然而，在图像到视频领域，尤其是角色动画中，如何在时间维度上保持与角色细节信息的一致性仍然是一个棘手的问题。")
            h2(b, "方法概述")
            p(b, "本文利用扩散模型的力量，提出了一个专为角色动画量身定制的新框架。为了保持参考图像中复杂外观特征的一致性，设计了ReferenceNet通过空间注意力合并细节特征。为了确保可控性和连续性，引入了高效的姿态引导器来指导角色的动作，并采用有效的时间建模方法来确保视频帧之间的平滑过渡。")
            p(b, "姿态序列首先使用Pose Guider编码并与多帧噪声融合，然后Denoising UNet执行去噪过程进行视频生成。Denoising UNet的计算块由Spatial-Attention、Cross-Attention和Temporal-Attention组成。参考图像的整合涉及两个方面：首先通过ReferenceNet提取详细特征用于Spatial-Attention；其次通过CLIP图像编码器提取语义特征用于Cross-Attention。")
            h2(b, "动画各种角色")
            p(b, "该方法可以动画化各种角色，包括人类、动漫/卡通角色和人形角色。通过扩展训练数据，可以动画化任意角色，在角色动画方面比其他图像到视频方法产生更优秀的结果。")
            h2(b, "基准测试")
            p(b, "在时尚视频合成和人体舞蹈合成的基准测试中达到了最先进的结果。时尚视频合成旨在使用驱动姿态序列将时尚照片转化为逼真的动画视频，实验在UBC时尚视频数据集上进行。人体舞蹈生成专注于在真实世界舞蹈场景中动画化图像，实验在TikTok数据集上进行。")
            h2(b, "更多应用")
            p(b, "Animate Anyone + Outfit Anyone：超高质量的虚拟试穿，适用于任何服装和任何人。图像到说话头视频：基于VividTalk的内部项目。推理加速：阿里巴巴云的DeepGPU (AIACC)加速了Animate Anyone视频生成工作负载，32帧832x640分辨率视频在A10 GPU上的生成时间从2.45秒降至1.75秒，性能提升40%。")
            a(b, attrs("href", "https://humanaigc.github.io/animate-anyone/"), "阅读原文")
        }
    )
}
