package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getThreejs3dlogoDragonirPost(): Post {
    return Post(
        "threejs3dlogo-dragonir",
        "Three.js实现脸书元宇宙3D动态Logo",
        "2021-11-21",
        "通过Three.js + Blender技术栈，实现Meta公司炫酷的3D动态Logo，包括基础模型圆环、环面扭结、管道及模型生成、加载、动画等。",
        { b =>
            h2(b, "背景")
            p(b, "Facebook近期将其母公司改名为Meta，宣布正式开始进军元宇宙领域。本文主要讲述通过Three.js + Blender技术栈，实现Meta公司炫酷的3D动态Logo，内容包括基础模型圆环、环面扭结、管道及模型生成、模型加载、添加动画、添加点击事件、更换材质等。")
            h2(b, "什么是元宇宙")
            p(b, "元宇宙Metaverse一词源于1992年尼尔·斯蒂芬森的《雪崩》，描述了一个平行于现实世界的虚拟世界。维基百科对元宇宙的描述是：通过虚拟增强的物理现实，呈现收敛性和物理持久性特征的，基于未来互联网，具有链接感知和共享特征的3D虚拟空间。")
            p(b, "元宇宙的内涵是吸纳了信息革命5G/6G、互联网革命web3.0、人工智能革命，以及VR、AR、MR，特别是游戏引擎在内的虚拟现实技术革命的成果。正如电影《头号玩家》的场景，在未来某一天，人们可以随时随地切换身份，自由穿梭于物理世界和数字世界。")
            h2(b, "开发实现")
            p(b, "开发之前先观察Meta Logo，可以发现它是一个圆环经过对折扭曲形成的，因此从实现圆环开始。")
            h2(b, "试炼一：TorusGeometry")
            p(b, "Three.js提供的基础几何体TorusGeometry（圆环），像甜甜圈的简单图形。主要参数：radius（半径）、tube（管子半径）、radialSegments（长度分段数）、tubularSegments（宽度分段数）、arc（绘制长度）。失败：没有找到扭曲圆环的方法。")
            h2(b, "试炼二：TorusKnotGeometry")
            p(b, "TorusKnotGeometry可以创建三维环面扭结，像一根管子绕着自己旋转了几圈。主要参数：p（绕对称轴旋转次数）、q（绕内部圆环旋转次数）。失败：没找到能够控制手动扭曲程度的方法。")
            h2(b, "试炼三：TubeGeometry")
            p(b, "TubeGeometry沿着一条三维的样条曲线拉伸出一根管。可以指定一些顶点来定义路径，然后创建管道。主要参数：path（THREE.SplineCurve3对象指定路径）、segments（分段数）、radius（管的半径）、closed（头尾是否连接）。")
            a(b, attrs("href", "https://www.cnblogs.com/dragonir/p/15574412.html"), "阅读原文")
        }
    )
}
