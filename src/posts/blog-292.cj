package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog292Post(): Post {
    return Post(
        "blog-292",
        "陀螺仪目标角度与当前角度偏差计算",
        "2024-04-07",
        "陀螺仪偏航角PID控制中的角度偏差计算方法，解决180度边界跳变问题",
        { b =>
            h2(b, "陀螺仪目标角度与当前角度偏差计算")
            p(b, "在角度 PID 控制中处理角度差时，陀螺仪测量的角度范围通常是 0 到 180 度以及 0 到 -180 度。计算角度偏差时通常使用 error = Target_angle - Now_angle。然而，当角度从正向 180 度跨越到负向 -179 度时，该公式会导致误差突变，影响控制稳定性。")
            h2(b, "方法一：分类讨论")
            p(b, "目标角度为正（Target > 0）时，将角度范围划分为 ABCD 四个区域：当前角度位于 AB 区域（Now_Angle > 0）时，偏差 error = Target - Now_Angle；当前角度位于 CD 区域（Now_Angle < 0）时，若位于 C 区域（Now_Angle > Target - 180），偏差 error = |Now_Angle| + Target；若位于 D 区域（Now_Angle < Target - 180），偏差 error = (Target-180) - (180 + Now_Angle)。")
            p(b, "目标角度为负（Target < 0）时类似处理：当前角度位于 AB 区域（Now_Angle < 0）时，偏差 error = Target - Now_Angle；当前角度位于 CD 区域（Now_Angle > 0）时，若位于 C 区域（Now_Angle > Target + 180），偏差 error = Now_Angle - (180 + Target)；若位于 D 区域（Now_Angle < Target + 180），偏差 error = Target - |Now_Angle|。")
            h2(b, "方法二：使用反正切函数")
            p(b, "使用 atan2 函数来计算目标角度与当前角度的差值。这种方法会考虑角度的方向，因此不会在 180 度边界处产生不连续性。")
            h2(b, "方法三：角度归一化")
            p(b, "将角度映射到 -180 度到 +180 度之间。当角度超过 180 度时减去 360 度，当角度小于 -180 度时加上 360 度，确保角度保持在连续范围内。")
            h2(b, "代码实现")
            p(b, "以下为方法一的 C 语言实现，适用于 STM32 等嵌入式平台的偏航角 PID 控制：")
            raw(b, "<blockquote>float Yaw_error(float Target, float Now) {<br>    static float error;<br>    if (Target > 0) {<br>        if (Now &lt;= 0) {<br>            if (fabs(Now) &lt; (180 - Target)) {<br>                error = fabs(Now) + Target;<br>            } else {<br>                error = -(180 - Target) - (180 - fabs(Now));<br>            }<br>        } else {<br>            error = Target - Now;<br>        }<br>    } else if (Target &lt; 0) {<br>        if (Now > 0) {<br>            if (Now > Target + 180) {<br>                error = (180 - Now) + (180 - fabs(Target));<br>            } else {<br>                error = -(fabs(Target) + Now);<br>            }<br>        } else {<br>            error = -(fabs(Target) - fabs(Now));<br>        }<br>    }<br>    return error;<br>}</blockquote>")
            p(b, "上述问题常见于偏航角转过 180 度时的场景。方法一的分类讨论方案实现简单，在嵌入式环境中计算效率高，推荐在实际项目中使用。")
            a(b, attrs("href", "https://blog.csdn.net/m0_73803270/article/details/132152952"), "阅读原文")
        }
    )
}
