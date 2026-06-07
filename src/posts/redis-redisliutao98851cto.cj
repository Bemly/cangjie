package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getRedisRedisliutao98851ctoPost(): Post {
    return Post(
        "redis-redisliutao98851cto",
        "redis分片原理 redis的分片_liutao988的技术博客_51CTO博客",
        "2023-11-02",
        "数据分片是指将数据按某种方式存储到不同的服务上来解决单机服务容量不足的问题",
        { b =>
            h2(b, "redis分片原理")
            p(b, "数据分片是指将数据按某种方式存储到不同的服务上来解决单机服务容量不足的问题。本文围绕Redis讲述逻辑拆分、随机分配、哈希取模、一致性哈希等分片算法原理和使用场景，并在此基础上对比客户端分片、代理(Proxy)和Redis Cluster各自的优缺点。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/redis-redisliutao98851cto/redis-01.avif", "alt", "Redis分片原理", "style", "max-width:100%"))
            h2(b, "客户端分片 - 三种普通方式")
            p(b, "逻辑拆分：适用于数据可以按逻辑分类、交集不多，一个Redis服务的容量足以支撑一个类别的情况。实现时按逻辑将数据分配到同一个Redis服务，比如按业务分类。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/redis-redisliutao98851cto/redis-02.avif", "alt", "逻辑拆分", "style", "max-width:100%"))
            p(b, "随机分配：类似消息队列的使用场景，将数据写到任意Redis服务，每个Redis服务都有消费者消费数据。一般会使用到List数据类型PUSH POP等操作。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/redis-redisliutao98851cto/redis-03.avif", "alt", "随机分配", "style", "max-width:100%"))
            p(b, "哈希取模：使用哈希算法接收Key作为参数，然后对预先计算好的、固定数量的Redis服务数量进行取模，最后落到对应服务。缺点是影响扩展性，因为取模数必须先估算好，不然增减节点所有数据都需要重新进行哈希取模运算。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/redis-redisliutao98851cto/redis-04.avif", "alt", "哈希取模", "style", "max-width:100%"))
            h2(b, "一致性哈希")
            p(b, "一致性哈希是在哈希取模方式的基础上解决了不方便动态增减节点的问题。先虚拟出2的32次方个节点，按顺时针方向看成一个首尾相连的环形。拿到Redis实体服务的信息经过哈希运算再对虚拟节点数量进行取模映射到环上的虚拟节点。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/redis-redisliutao98851cto/redis-05.avif", "alt", "一致性哈希", "style", "max-width:100%"))
            p(b, "当数据读写的时候同样用同样方式将Key作为参数运算后映射到环上的某个虚拟节点，如果该虚拟节点没有对应Redis实体服务则顺时针找最近的实体服务完成操作。新增节点时，原本某段的数据会重新分配。数据倾斜问题可以通过让Redis实体服务映射到多个点上来解决。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/redis-redisliutao98851cto/redis-06.avif", "alt", "虚拟节点", "style", "max-width:100%"))
            h2(b, "客户端分片问题")
            p(b, "在客户端执行分片算法后需要连接对应Redis完成操作，那就意味着每个客户端都会跟每个Redis产生连接。当客户端增多的时候Redis服务的连接开销比较大。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/redis-redisliutao98851cto/redis-07.avif", "alt", "客户端分片问题", "style", "max-width:100%"))
            h2(b, "代理(Proxy)")
            p(b, "代理的出现主要是解决客户端分片时Redis连接开销过大的问题。客户端只连接代理，代理去跟后面的Redis服务建立连接。并且让代理去实现分片算法，它是无状态的，只负责计算和将操作落到对应Redis服务，不存储数据。为了高可用还可以在客户端与代理之间加一层负载均衡。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/redis-redisliutao98851cto/redis-08.avif", "alt", "代理模式", "style", "max-width:100%"))
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/redis-redisliutao98851cto/redis-09.avif", "alt", "负载均衡", "style", "max-width:100%"))
            h2(b, "Redis Cluster")
            p(b, "Redis Cluster则是用预分配的方式来规避这些问题。Redis Cluster是一个无主模型，通过哈希运算对16384个槽位进行取模，让集群中的所有节点一起分摊这些槽位。客户端可以连接集群任意节点进行操作，节点经过计算后对比映射关系，如果不属于自己则返回MOVE错误并附带正确的节点地址。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/redis-redisliutao98851cto/redis-10.avif", "alt", "Redis Cluster", "style", "max-width:100%"))
            p(b, "数据分片的情况下如KEYS、MULTI等聚合操作难以实现，因为数据分布在不同的节点。Redis Cluster给出的方案是在Key前加入统一的{tag}格式，这样就只会对tag进行哈希运算让这些数据落到同一个节点。")
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/redis-redisliutao98851cto/redis-11.avif", "alt", "tag分片", "style", "max-width:100%"))
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/redis-redisliutao98851cto/redis-12.avif", "alt", "槽位分配", "style", "max-width:100%"))
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/redis-redisliutao98851cto/redis-13.avif", "alt", "节点通信", "style", "max-width:100%"))
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/redis-redisliutao98851cto/redis-14.avif", "alt", "故障转移", "style", "max-width:100%"))
            img(b, attrs("data-src", "https://bemly-moe.5ddd.com/cangjie/redis-redisliutao98851cto/redis-15.avif", "alt", "集群配置", "style", "max-width:100%"))
            a(b, attrs("href", "https://blog.51cto.com/u_13317/6646000"), "阅读原文")
        }
    )
}
