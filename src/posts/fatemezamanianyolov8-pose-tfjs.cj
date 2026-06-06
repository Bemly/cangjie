package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getFatemezamanianyolov8PoseTfjsPost(): Post {
    return Post(
        "fatemezamanianyolov8-pose-tfjs",
        "FatemeZamanian/YOLOv8-Pose-tfjs",
        "2024-01-20",
        "GitHub 文件：FatemeZamanian/YOLOv8-Pose-tfjs",
        { b =>
            h2(b, "FatemeZamanian/YOLOv8-Pose-tfjs")
            p(b, "此链接为 GitHub 文件/代码，非博客文章。")
            a(b, attrs("href", "https://github.com/FatemeZamanian/YOLOv8-Pose-tfjs/tree/main"), "访问原始链接")
        }
    )
}
