package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDownloadWeasisDicomViewerWeasisDocumentPost(): Post {
    return Post(
        "download-weasis-dicom-viewer-weasis-document",
        "Download Weasis DICOM Viewer :: Weasis Document...",
        "2023-04-26",
        "原文待补充：Download Weasis DICOM Viewer :: Weasis D",
        { b =>
            h2(b, "Download Weasis DICOM Viewer :: Weasis Document...")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "https://nroduit.github.io/en/getting-started/download-dicom-viewer/"), "阅读原文")
        }
    )
}
