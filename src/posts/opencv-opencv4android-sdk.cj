package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getOpencvOpencv4androidSdkPost(): Post {
    return Post(
        "opencv-opencv4android-sdk",
        "OpenCV: OpenCV4Android SDK",
        "2024-01-16",
        "官方文档/工具：OpenCV: OpenCV4Android SDK",
        { b =>
            h2(b, "OpenCV: OpenCV4Android SDK")
            p(b, "此链接为官方文档/工具页面，非博客文章。")
            a(b, attrs("href", "https://docs.opencv.org/4.8.0/da/d2a/tutorial_O4A_SDK.html"), "访问原始链接")
        }
    )
}
