package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDeviceOrientationApiDemoByAurelioDeRosaPost(): Post {
    return Post(
        "device-orientation-api-demo-by-aurelio-de-rosa",
        "Device Orientation API Demo by Aurelio De Rosa",
        "2024-03-21",
        "HTML5 Device Orientation API演示页面，展示设备方向传感器数据包括坐标、加速度和旋转速率",
        { b =>
            h2(b, "Device Orientation API Demo")
            p(b, "这是由Aurelio De Rosa创建的Device Orientation API演示页面，属于HTML5 API demos仓库的一部分。")
            p(b, "该演示展示了Device Orientation API的功能，可以实时获取设备的方向传感器数据，包括以下信息：")
            p(b, "坐标（Coordinates）：设备在三维空间中的方位信息；位置是否为绝对值（Position absolute）；加速度（Acceleration）：设备在三个轴上的加速度，单位为m/s\u00b2。")
            p(b, "包含重力的加速度（Acceleration including gravity）：加入重力影响后的加速度值；旋转速率（Rotation rate）：设备绕三个轴的旋转速度；采样间隔（Interval）：数据更新的间隔时间。")
            p(b, "Device Orientation API是HTML5提供的一个接口，允许Web应用访问设备的陀螺仪和加速度计数据，常用于实现地图方向指示、增强现实应用、体感游戏等功能。")
            a(b, attrs("href", "https://www.audero.it/demo/device-orientation-api-demo.html"), "访问原始链接")
        }
    )
}
