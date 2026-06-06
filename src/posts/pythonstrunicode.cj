package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getPythonstrunicodePost(): Post {
    return Post(
        "pythonstrunicode",
        "python中的str与unicode处理方法",
        "[http://www.pulpcode.cn/2014/12/23/python-encode/](http://www.pulpcode.cn/2014/12/23/python-encode/)",
        "python2.x中处理中文是一件头疼的事情，本文总结了str与unicode之间的编码解码方法。",
        { b =>
            h2(b, "python中的str与unicode处理方法")
            p(b, "python2.x中处理中文，是一件头疼的事情。网上写这方面的文章，测次不齐，而且都会有点错误，所以在这里打算自己总结一篇文章。这里假设读者已有与编码相关的基础知识。")
            h3(b, "str与字节码")
            p(b, "首先，完全不谈unicode。s = \"人生苦短\"，s是个字符串，它本身存储的就是字节码。那么这个字节码是什么格式的？如果这段代码是在解释器上输入的，那么s的格式就是解释器的编码格式，对于windows的cmd而言，就是gbk。如果将段代码是保存后才执行的，比如存储为utf-8，那么在解释器载入这段程序的时候，就会将s初始化为utf-8编码。")
            h3(b, "unicode与str")
            p(b, "我们知道unicode是一种编码标准，具体的实现标准可能是utf-8，utf-16，gbk等。python在内部使用两个字节来存储一个unicode，使用unicode对象而不是str的好处，就是unicode方便于跨平台。你可以用如下两种方式定义一个unicode：s1 = u\"人生苦短\" 或 s2 = unicode(\"人生苦短\", \"utf-8\")。")
            h3(b, "encode与decode")
            p(b, "在python中的编码解码流程是：str通过decode变成unicode，unicode通过encode变成str。例如：su = \"人生苦短\"（utf-8格式的字节串），u = s.decode(\"utf-8\")（解码为unicode对象），sg = u.encode(\"gbk\")（编码为gbk格式的字节串）。")
            p(b, "但事实情况要比这个复杂。str也能编码，当对str进行编码时，会先用默认编码将自己解码为unicode，然后再将unicode编码为你指定的编码。这就引出了python2.x中处理中文时大多数出现错误的原因：python的默认编码defaultencoding是ascii。")
            h3(b, "设置defaultencoding")
            p(b, "设置defaultencoding的代码如下：reload(sys)；sys.setdefaultencoding('utf-8')。如果你在python中进行编码和解码的时候不指定编码方式，那么python就会使用defaultencoding。默认的defaultencoding ascii是许多错误的原因，所以早早的设置defaultencoding是一个好习惯。")
            h3(b, "文件头声明编码的作用")
            p(b, "顶部的 # -*- coding: utf-8 -*- 目前看来有三个作用：如果代码中有中文注释就需要此声明；比较高级的编辑器会根据头部声明将此作为代码文件的格式；程序会通过头部声明解码初始化unicode对象，所以头部声明和代码的存储格式要一致。")
            h3(b, "关于requests库")
            p(b, "requests是一个很实用的Python HTTP客户端库。其中的Request对象在访问服务器后会返回一个Response对象，这个对象将返回的Http响应字节码保存到content属性中。但是如果你访问另一个属性text时，会返回一个unicode对象，乱码问题就会常常发生在这里。因为Response对象会通过encoding属性来将字节码编码成unicode，而这个encoding属性居然是responses自己猜出来的。")
            h3(b, "实用方法总结")
            p(b, "程序内部尽量使用unicode而不用str。基本设置包括：主动设置defaultencoding（默认的是ascii）；代码文件的保存格式要与文件头部的coding一致。在打印str的时候实际就是直接将字节流发送给shell，如果编码格式不同就会乱码。而打印unicode的时候系统自动将其编码为shell的编码格式，不会出现乱码。")
            p(b, "程序内外要统一。从外部读入字节流时一定要将这些字节流转化为unicode。可以使用codecs直接开unicode通道：file = codecs.open(\"test\", \"r\", \"utf-8\")，这样读入的i的类型就是unicode的。")
            a(b, attrs("href", "http://www.pulpcode.cn/2014/12/23/python-encode/"), "阅读原文")
        }
    )
}
