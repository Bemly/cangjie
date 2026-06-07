package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBashZshFishPost(): Post {
    return Post(
        "bash-zsh-fish",
        "写一个 bash zsh 和 fish 都能跑的脚本 - 杰哥的{运维，编程，调板子}小笔记",
        "2024-08-18",
        "bash 和 zsh 都实现了 POSIX shell 标准，比较容易兼容。但 fish 不符合 POSIX 标准，能否写一个三种 shell 都能跑的脚本？",
        { b =>
            h2(b, "写一个 bash zsh 和 fish 都能跑的脚本")
            p(b, "bash 和 zsh 都实现了 POSIX shell 标准，因此写脚本的时候，比较容易兼容这两种常见的 shell。但现在 fish 也很流行，而 fish 不符合 POSIX shell 标准，很多地方语法多不兼容，能否写一个脚本，可以用 bash，zsh 和 fish 跑？")
            h2(b, "简单版本")
            p(b, "简单版本是，给不同的 shell 写不同的版本，然后写一个小的通用版本，负责执行不同的版本：")
            raw(b, "<pre><code>type status >/dev/null 2>/dev/null && exec fish ./code-fish.sh\ntype zstyle >/dev/null 2>/dev/null && exec zsh ./code-zsh.sh\nexec bash ./code-bash.sh</code></pre>")
            p(b, "原理是利用 type 内置命令判断是否存在某个命令：status 是 fish 特有的，zstyle 是 zsh 特有的，如果判断成功，就去执行相应的脚本。因为用了 exec，所以如果执行到 exec，后面的代码就不会执行了。")
            h2(b, "复杂版本")
            p(b, "如果头铁，想要用 if-then-else 来实现呢？POSIX shell 需要 then 和 fi，fish shell 需要的是 end。这就出现了矛盾。")
            p(b, "shell 里面有一个特别的命令 alias，可以给命令起别名。如果可以让 then 和 fi 在 fish 里面变成 no-op，让 end 在 bash 里变成 no-op，那是不是就好了？")
            raw(b, "<pre><code>alias then=\"true\"\n\nif status current-command 2>/dev/null | grep -q fish\nthen\n    echo \"I'm in fish\"\nelse\n    echo \"I'm in bash\"\nfi\nexit 0\nend</code></pre>")
            p(b, "Bash 看到 then 的时候，是不会管 alias 的，所以对它来说，这个 alias 不生效。然后就会正常走 else 分支，然后在走到 end 之前就退出了。在 fish 眼里，fish 不认识 then，所以它就会应用上 alias，变成一个 true 命令。")
            p(b, "但是，如果在 zsh 里跑，就会遇到解析错误。说明 bash 和 zsh 虽然都实现了 POSIX shell，但在 alias 的展开时机上实现并不一样。可以用 unalias 来解决：")
            raw(b, "<pre><code>alias then=\"true\"\ntype unalias >/dev/null 2>&1 && unalias then\n\nif status current-command 2>/dev/null | grep -q fish\nthen\n    echo \"I'm in fish\"\nelse\n    type zstyle >/dev/null 2>&1 && echo \"I'm in zsh\" || echo \"I'm in bash\"\nfi\nexit 0\nend</code></pre>")
            p(b, "搞了一大通，才实现了三种 shell 都可以跑的 if else 语句。")
            a(b, attrs("href", "https://jia.je/programming/2023/07/18/portable-script-across-bash-zsh-fish/"), "阅读原文")
        }
    )
}
