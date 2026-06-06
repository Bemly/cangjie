package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlogThemeDetailsPost(): Post {
    return Post(
        "blog-theme-details",
        "Blog Theme - Details",
        "2024-02-29",
        "Oracle Linux Blog关于VirtIO虚拟化I/O技术的详细介绍，涵盖VirtIO设备、驱动、VirtQueue和VRing等核心概念。",
        { b =>
            h2(b, "Introduction to VirtIO")
            p(b, "VirtIO (virtual input & output) is an abstraction layer over a host's devices for virtual machines. It's an interface that allows a virtual machine to use its host's devices via minimized virtual devices called VirtIO devices. These VirtIO devices are minimal because they're implemented with only the bare necessities to be able to send and receive data.")
            h3(b, "What is VirtIO?")
            p(b, "With VirtIO, the host handles the majority of the setup, maintenance, and processing on its actual physical hardware devices. A VirtIO device's role is more or less getting data to and from the host's actual physical hardware. For example, if a VM wants to access the internet, a VirtIO device called virtio-net can be created to send and receive network data to and from the host.")
            p(b, "An important aspect of VirtIO is that its core framework is standardized to an official VirtIO specification. The spec defines standard requirements that VirtIO devices and drivers must meet, including feature bits, statuses, configuration, and general operations.")
            h3(b, "Virtualization vs. Emulation")
            p(b, "In emulation, software fills in for hardware and acts as if it were real hardware. In virtualization, software splits the host's physical hardware for guest VMs to use, essentially dedicating that portion of hardware to that VM. Emulation is preferred when you need to use a device or software that your host's hardware doesn't support, but it comes with performance costs.")
            p(b, "You would choose emulation over virtualization if you need to run an OS meant for different hardware, run software meant for another OS, or run legacy devices on unsupported hardware. You would choose virtualization over emulation if you care about performance, don't need legacy support, or need to run multiple guest instances with efficient resource utilization.")
            h3(b, "VirtIO Architecture")
            p(b, "The architecture of VirtIO has three key parts: front-end drivers, back-end devices, and VirtQueues & VRings. Front-end VirtIO drivers exist in the guest's kernel, back-end VirtIO devices exist in the hypervisor (Qemu), and communication between them is handled in the data plane via VirtQueues & VRings.")
            h3(b, "VirtIO Drivers (Front-End)")
            p(b, "In a typical host and guest setup with VirtIO, VirtIO drivers exist in the guest's kernel as kernel modules. A VirtIO driver's core responsibilities are: accepting I/O requests from user processes, transferring those I/O requests to the corresponding back-end VirtIO device, and retrieving completed requests for the user.")
            h3(b, "VirtQueues and VRings")
            p(b, "VirtQueues are the core communication mechanism between front-end drivers and back-end devices. They consist of descriptor tables, available rings, and used rings. VRings (or areas) are the actual memory regions that make up the VirtQueue data structures, enabling efficient zero-copy data transfer between host and guest.")
            a(b, attrs("href", "https://blogs.oracle.com/linux/post/introduction-to-virtio"), "阅读原文")
        }
    )
}
