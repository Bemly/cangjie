package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getHowIUseGithubsWikiFeatureForApiDocumenPost(): Post {
    return Post(
        "how-i-use-githubs-wiki-feature-for-api-documen",
        "How I Use Github's Wiki Feature For API Documentation",
        "2024-02-04",
        "Stephen McBride が GitHub Wiki を使って REST API ドキュメントを作成した経験を共有する記事。",
        { b =>
            h2(b, "How I Use Github's Wiki Feature For API Documentation")
            p(b, "この記事は Stephen McBride による、GitHub Wiki を使って REST API のドキュメントを作成した経験を共有する記事です。")
            h2(b, "背景")
            p(b, "チームでプロジェクトに取り組む中で、API ドキュメントの重要性に気づきました。個人プロジェクトではドキュメントを書く必要がなかったのですが、チーム開発ではフロントエンド開発者が API を正しく利用できるようにするためのドキュメントが必要でした。")
            p(b, "いくつかの REST API のドキュメントを研究した結果、GitHub Wiki を使うことに決めました。Twitch の API リファレンスからインスピレーションを得て、プロジェクトに合わせた修正を加えました。")
            h2(b, "ドキュメントの構成")
            p(b, "最初のページでは API の概要と認証方法について説明しました。各アクションのドキュメントは以下の要素で構成しています。")
            p(b, "Action Name/Details: アクションの名前と簡単な説明。Authentication: 認証に関する情報。URL: HTTP メソッドとパス。Request Data: リクエストデータのパラメータ名、データ型、説明、必須かどうか。")
            h2(b, "リクエストとレスポンスの例")
            p(b, "Example Request: JavaScript で書かれたリクエスト例を含めました。フロントエンド開発時に役立つと考えたためです。Response Parameters: レスポンスのパラメータ名、データ型、説明。Example Response: JSON 形式で返されるレスポンスの例。")
            h2(b, "まとめ")
            p(b, "GET リクエストのアクションではリクエストデータの情報は不要です。プロジェクトによって情報の追加や削除は異なります。あくまで筆者の API ドキュメント作成の一例であり、改善点があればフィードバックを歓迎します。")
            a(b, attrs("href", "https://stephenmcbride.medium.com/how-i-use-githubs-wiki-feature-for-api-documentation-996a6407d270"), "阅读原文")
        }
    )
}
