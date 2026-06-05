package bemlyCJWeb

public func getPost(): Post {
    return Post(
        "arch-linux-400mb",
        "ECS 400MB 内存安装 Arch Linux",
        "2026-05-15",
        "在阿里云 400MB 内存 ECS 上从零安装 Arch Linux，踩坑 9 个，最终成功。",
        """
            <p>近期将阿里云 ECS 从 Ubuntu 迁移到 Arch Linux，过程中遇到大量踩坑。本文记录了完整的安装过程和 9 个关键错误。</p>
            <h2>环境</h2>
            <ul>
                <li>服务器：阿里云 ECS 400MB RAM, 20GB 磁盘, UEFI 启动</li>
                <li>目标：Arch Linux (滚动发行版)</li>
            </ul>
            <h2>核心踩坑</h2>
            <h3>内存不足 OOM</h3>
            <p>400MB 内存下 zstd 解压直接 OOM。解决：用 gzip 格式 bootstrap，创建 8GB swap。</p>
            <h3>pacstrap 的 unshare 陷阱</h3>
            <p>pacstrap 内部使用 unshare 创建隔离命名空间，swap 在新命名空间内不可访问。解决：绕过 pacstrap，直接用 pacman -r。</p>
            <h3>filesystem 包冲突</h3>
            <p>Arch 的 filesystem 包创建符号链接/目录与 Ubuntu 冲突，--overwrite 对目录无效。解决：宿主机层面 mv 改名。</p>
            <h3>四层转义地狱</h3>
            <p>经过本地 shell → SSH → 远程 shell → bash -c 四层，* 被展开。解决：heredoc 禁止变量展开。</p>
            <p>最终成功安装，系统运行在 216MB 可用内存，swap 几乎未使用。</p>
        """
    )
}
