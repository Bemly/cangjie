package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getArktsImageArktsPost(): Post {
    return Post(
        "arkts-image-arkts",
        "【鸿蒙应用ArkTS开发系列】- 选择图片、文件和拍照功能实现_image 更换图片arkts...",
        "2024-01-19",
        "在鸿蒙原生应用中使用ArkTS实现选择图片、文件和拍照功能，通过拉起系统组件实现多媒体文件操作。",
        { b =>
            h2(b, "【鸿蒙应用ArkTS开发系列】- 选择图片、文件和拍照功能实现")
            p(b, "在使用App的时候，我们经常会在一些社交软件中聊天时发一些图片或者文件之类的多媒体文件，那在鸿蒙原生应用中，我们怎么开发这样的功能呢？本文会给大家对这个功能点进行讲解，我们采用的是拉起系统组件来进行图片、文件的选择，拉起系统相机进行拍照的这样一种实现方式。")
            h3(b, "创建MediaBean实体类")
            p(b, "在 src -> main -> ets 下面创建 bean 文件夹，在文件夹下创建 MediaBean.ts 文件。MediaBean 类包含 fileName（文件名称）、fileSize（文件大小）、fileType（文件类型）、localUrl（本地存储地址）四个属性。")
            h3(b, "创建MediaHelper工具类")
            p(b, "在 src -> main -> ets 下面创建 helper 文件夹，在文件夹下创建 MediaHelper.ts 文件。MediaHelper 类定义了5个方法：selectPicture 提供选择图片功能、selectFile 提供选择文件功能、takePhoto 提供拍照功能、buildMediaBean 封装附件实体类、appendFileInfoToMediaBean 追加查询所选文件信息。")
            h3(b, "实现选择图片功能")
            p(b, "选择图片的功能通过系统组件 picker.PhotoViewPicker 来进行图片选择。通过配置 PhotoSelectOptions，指定选择的 MIMEType 类型为 PhotoViewMIMETypes.IMAGE_TYPE（图片类型），maxSelectNumber 设置为1实现单选功能。使用 photoPicker.select 拉起系统组件进行选择，然后在回调中获取图片的 uri。")
            h3(b, "实现选择文件功能")
            p(b, "选择文件的功能通过系统组件 picker.DocumentViewPicker 来进行文件选择。代码基本跟图片选择是一样的，区别在于使用 DocumentSelectOptions。目前 api9 并没有配置项提供，具体关注后续的 api 版本情况。")
            h3(b, "实现拍照功能")
            p(b, "拍照功能通过拉起相机来进行拍照，使用 startAbilityForResult 方法，配置 Action 为 ACTION_IMAGE_CAPTURE 来拉起系统相机。拍照成功后通过 result.want.uri 获取拍照文件的路径。")
            h3(b, "封装文件信息")
            p(b, "通过系统组件选择图片、文件或者拍照之后，系统只是简单返回一个文件的 Uri。如果需要展示文件的名称、文件大小、文件类型，需要通过 appendFileInfoToMediaBean 方法另外去获取，通过 fs.open 打开文件获取 file fd，再使用 fs.stat 获取文件大小等信息。")
            h3(b, "动态申请权限")
            p(b, "在使用多媒体功能之前，需要动态申请多媒体访问权限。使用 abilityAccessCtrl.createAtManager() 创建权限管理器，通过 requestPermissionsFromUser 方法向用户申请 ohos.permission.READ_IMAGEVIDEO 和 ohos.permission.CAMERA 等权限。")
            a(b, attrs("href", "https://blog.csdn.net/q919233914/article/details/134665775"), "阅读原文")
        }
    )
}
