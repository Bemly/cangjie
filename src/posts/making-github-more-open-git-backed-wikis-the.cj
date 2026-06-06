package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getMakingGithubMoreOpenGitBackedWikisThePost(): Post {
    return Post(
        "making-github-more-open-git-backed-wikis-the",
        "Making GitHub More Open: Git-backed Wikis",
        "2024-02-04",
        "GitHub が Git-backed Wiki システムをリリースした 2010 年の公式ブログ記事。Markdown サポート、Git 履歴比較、Gollum ライブラリについて。",
        { b =>
            h2(b, "Making GitHub More Open: Git-backed Wikis")
            p(b, "この記事は 2010 年 8 月 12 日に GitHub 公式ブログで公開された記事です。著者は Risk Olson (@technoweenie) です。")
            h2(b, "Git-backed Wiki システムのリリース")
            p(b, "GitHub は既存の Wiki システムに関するフィードバックを受け、完全に書き直された Git-backed Wiki システムの最初のフェーズをリリースしました。各ページはディレクトリ内のファイルであり、各変更はコミットです。")
            h2(b, "Markdown サポート")
            p(b, "多くの人が Textile を好んでいましたが、Wiki は Markdown をサポートしない数少ない場所の一つでした。新しい GitHub Wiki はマークアップライブラリを活用して 8 つのフォーマットをサポートし、コンテキストに応じたヘルプとツールバーを提供します。")
            h2(b, "Git パワードの履歴と比較")
            p(b, "変更の差分を確認できるのは Wiki の highly requested な機能でした。Git はすでにこの機能に優れているため、既存のツールを活用して履歴の表示と比較を行います。")
            h2(b, "画像とフォルダ")
            p(b, "Git リポジトリ内にホストされている画像を参照できるようになりました。")
            h2(b, "インポートとエクスポート")
            p(b, "各 Wiki は Git リポジトリであるため、他のものと同じように push や pull が可能です。各 Wiki はソースリポジトリと同じ権限を尊重します。URL に「.wiki」を追加するだけで利用できます。")
            h2(b, "Gollum ライブラリ")
            p(b, "GitHub は GitHub Wiki をパワリングする Ruby ライブラリ「Gollum」もリリースしました。Gollum はコンテンツへのアクセスと変更のための Ruby API を提供し、小さな Sinatra Web サーバーも含まれています。")
            h2(b, "スクリプトの削除とアップグレード")
            p(b, "GitHub はパブリック Wiki エクスペリエンスを改善するため、すべてをメインの github.com ドメイン下でホストすることにしました。すべての JavaScript と CSS をサニタイズしています。新しい Wiki はベータ版で、2010 年 9 月 12 日からすべてのクラシック Wiki を無効にして強制アップグレードを開始予定でした。")
            a(b, attrs("href", "https://github.blog/2010-08-12-making-github-more-open-git-backed-wikis/"), "阅读原文")
        }
    )
}
