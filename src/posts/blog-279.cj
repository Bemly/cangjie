package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getBlog279Post(): Post {
    return Post(
        "blog-279",
        "检索结果_图书馆",
        "2024-02-05",
        "原文待补充：检索结果_图书馆",
        { b =>
            h2(b, "检索结果_图书馆")
            p(b, "原文内容待补充。")
            a(b, attrs("href", "http://172.31.44.79:8080/opac/search?range=20&tablename=&q=I3&flword=+I3&searchType=oneSearch&field=callNumberSearch&searchModel=contain&oneSearchWord=&twoSearchWord=&advSearchWold=&combineSearchWold=&exactSearch=no&fq=%26fq%3DbookStatus%3A%28G+OR+Journal%29%26fq%3DkeyCode%3A%285at1+OR+4at2+OR+6at1+OR+7at2+OR+3at1+OR+4at1+OR+5at2+OR+6at2+OR+2at1+OR+3at2+OR+2at2+OR+1at2+OR+1at1+OR+7at1%29%26fq%3DlocationId%3A%2810+OR+11+OR+98+OR+99+OR+BW+OR+BZ+OR+CD+OR+CL+OR+CW+OR+CY+OR+DA+OR+DW+OR+DX+OR+FG+OR+FL+OR+FT+OR+FXY+OR+GE+OR+GH+OR+GJY+OR+GK+OR+GP+OR+GSJ+OR+GY+OR+HPSG+OR+HQ+OR+HZSY+OR+JA+OR+JC+OR+JD+OR+JG+OR+JJ+OR+JQY+OR+JVB+OR+JW+OR+JX+OR+KJ+OR+KYS+OR+LCY+OR+LE+OR+LJ+OR+LS+OR+LY+OR+LZ+OR+MJ+OR+ML+OR+PG+OR+QK+OR+RSC+OR+RW+OR+SH+OR+SJ+OR+SJC+OR+SJXY+OR+SZ+OR+TDHS+OR+TM+OR+TW+OR+TY+OR+WA+OR+WD+OR+WE+OR+WJ+OR+WS+OR+WT+OR+WXY+OR+WY+OR+XB+OR+XC+OR+XK+OR+XS+OR+YB+OR+YS+OR+YT+OR+YX+OR+ZC+OR+ZG+OR+ZGJ+OR+ZH+OR+ZJ+OR+ZN+OR+ZT+OR+ZZ+OR+AA+OR+BB+OR+HZSY%29&sort=desc&corename=&isdisk=&sortfiled=latestEntryDate&pager.offset=180"), "阅读原文")
        }
    )
}
