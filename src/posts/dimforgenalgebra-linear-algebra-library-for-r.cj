package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getDimforgenalgebraLinearAlgebraLibraryForRPost(): Post {
    return Post(
        "dimforgenalgebra-linear-algebra-library-for-r",
        "dimforge/nalgebra: Linear algebra library for R...",
        "2025-12-20",
        "GitHub 仓库：dimforge/nalgebra: Linear algebra librar",
        { b =>
            h2(b, "dimforge/nalgebra: Linear algebra library for R...")
            p(b, "此链接为 GitHub 仓库，非博客文章。")
            a(b, attrs("href", "https://github.com/dimforge/nalgebra?tab=readme-ov-file"), "访问原始链接")
        }
    )
}
