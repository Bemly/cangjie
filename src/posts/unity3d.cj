package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getUnity3dPost(): Post {
    return Post(
        "unity3d",
        "如何防止Unity3D代码被反编译？",
        "2024-04-07",
        "知乎讨论：关于防止Unity3D代码被反编译的方法，以及冰蝎Webshell流量分析",
        { b =>
            h2(b, "如何防止Unity3D代码被反编译？")
            p(b, "本文整理自知乎问答。Unity3D 游戏使用 C# 作为脚本语言，编译后的 IL 代码可以被工具轻松反编译。市面上除了腾讯的 Unity3D 游戏之外，其他游戏都可以使用 DisUnity 拆包，配合 DotNetReflector 等工具查看源码。")
            p(b, "问题的核心在于：Unity3D 将 C# 脚本编译为 .NET DLL，这些 DLL 以 IL（中间语言）形式存在，反编译门槛极低。任何具备基本逆向知识的人都可以从游戏资源包中提取出可读的源代码。")
            h2(b, "常见防护方案")
            p(b, "1. 代码混淆（Obfuscation）：使用 Obfuscator 工具对编译后的 IL 代码进行变量名混淆、控制流混淆等处理，增加逆向难度。常用工具包括 Obfuscator for Unity、Beebyte 等。")
            p(b, "2. IL2CPP 编译：Unity 提供的 IL2CPP 方案可将 C# 代码转换为 C++ 再编译为原生代码，大幅提升反编译难度。但需要注意 IL2CPP 并非完全不可逆，仍可通过 IDA Pro 等工具进行分析。")
            p(b, "3. 加密与加壳：对关键逻辑使用加密保护，或对 DLL 文件进行加壳处理。但这些方案在游戏运行时仍然需要解密，存在被内存 dump 的风险。")
            p(b, "4. 关键逻辑服务端化：将核心算法和验证逻辑放在服务器端执行，客户端只负责渲染和交互。这是最安全的方案，但对网络要求较高。")
            h2(b, "冰蝎（Behinder）流量分析")
            p(b, "讨论中还涉及了冰蝎（Behinder）v4.0 Webshell 的流量分析。冰蝎使用 xor_base64 或 AES 加密方式进行通信，其 PHP shell 的核心解密逻辑如下：")
            raw(b, "<blockquote>function decrypt($data) { $key=\"25f9e794323b4538\"; $bs=\"base64_decode\"; $after=$bs($data); for($i=0;$i&lt;strlen($after);$i++) { $after[$i] = $after[$i]^$key[$i+1&amp;15]; } return $after; }</blockquote>")
            p(b, "冰蝎 v3.0 和 v4.0 的主要区别在于：v3.0 会将密钥存储到 $_SESSION 变量中，并根据服务端是否加载 openssl 扩展选择使用 AES128 或 xor_base64 解密；v4.0 则统一使用 xor_base64 作为默认传输协议。")
            p(b, "通信过程分为两个阶段：密钥协商阶段（客户端请求服务器密钥）和加密传输阶段（使用 AES 或 XOR 运算加密命令和响应）。v4.0 版本中，密钥协商和第一次命令执行可以合并在同一个请求中完成。")
            a(b, attrs("href", "https://www.zhihu.com/question/25414422/answer/2848915490"), "查看知乎原文")
        }
    )
}
