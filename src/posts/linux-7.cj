package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getLinux7Post(): Post {
    return Post(
        "linux-7",
        "Linux驱动开发之输入子系统 - 大窟窿 - 博客园",
        "2024-08-10",
        "Linux输入子系统是一种编程框架，屏蔽众多输入设备在硬件上的差异化，为各种输入设备与上层应用提供统一的编程接口。",
        { b =>
            h2(b, "Linux驱动开发之输入子系统")
            p(b, "Linux 中输入设备大致可分以下几种：按键/键盘(keyboard)、鼠标(mouse)、触摸屏(touchscreen)、游戏杆(joystick)。输入子系统的目的是为了屏蔽众多输入设备在硬件上的差异化，使得在开发输入设备的程序时能更简单统一。输入子系统屏蔽差异的方式就是为各种输入设备与上层应用提供统一的编程接口。")
            p(b, "Linux 输入子系统是一种编程框架，它可以自上而下分为以下几种层次：应用层、input handler层（数据处理层，完成fops的动作并将输入事件上报给用户，负责创建文件节点即/dev/input/xxx）、input core层（输入核心层/管理层，负责为来自输入设备层的事件分发给相应的数据处理层）、input device层（输入设备层，负责初始化硬件并将硬件的原始数据上报给核心层）、硬件层。")
            p(b, "在输入子系统的开发中，需要我们去实现的就应用层与输入设备层。其余部分内核已经实现好了，直接用就行。")
            raw(b, "<blockquote>输入核心层与数据处理层所对应的代码文件分别为：./drivers/input/input.c 和 ./drivers/input/evdev.c。可以在 make menuconfig 中将它们开启编译。</blockquote>")
            p(b, "一个最简单的利用输入子系统来新增输入设备驱动的流程：1、分配一个input device对象（input_allocate_device）；2、初始化input device对象（设置evbit和keybit）；3、注册input_device对象到输入核心层（input_register_device）。运行后会自动在 /dev/input 目录下新增一个event*的设备节点。")
            p(b, "在输入子系统中，用于在输入设备层向核心层上报数据的函数接口：void input_event(struct input_dev *dev, unsigned int type, unsigned int code, int value)。参数1表示哪个input device上报的数据，参数2表示上报的是哪种类型的数据，参数3表示上报的具体数据是什么，参数4表示值是什么。调用完input_event()后一定要再调用input_sync()函数。")
            p(b, "常用的事件类型定义：EV_SYN(0x00)同步数据类型、EV_KEY(0x01)按键数据类型、EV_REL(0x02)相对坐标数据类型、EV_ABS(0x03)绝对坐标数据类型、EV_MSC(0x04)杂项、EV_SW(0x05)开关、EV_LED(0x11)LED指示数据、EV_SND(0x12)声音数据。")
            p(b, "input device 被抽象成 input_dev 结构体，包含name、phys、uniq、id等成员用于描述设备信息，evbit位表描述设备能够产生什么类型的数据，keybit表示能够产生哪种按键，relbit表示相对坐标数据，absbit表示绝对坐标数据等。")
            p(b, "上层应用读取到的输入子系统上报的数据是统一格式的数据包 struct input_event，包含time、type、code、value四个字段。通过这个统一的接口，开发驱动变得简单了很多。")
            p(b, "如何驱动多个按键：需要将按键信息描述在设备树文件中，通过of_find_node_by_path获取设备树节点，irq_of_parse_and_map获取中断号码，request_irq申请中断，在中断处理函数中使用input_event上报按键事件。")
            a(b, attrs("href", "https://www.cnblogs.com/chorm590/p/12311107.html"), "阅读原文")
        }
    )
}
