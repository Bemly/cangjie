package bemlyCJWeb.posts

import html_builder.*
import bemlyCJWeb.model.*

public func getGithubRestApiIssuePost(): Post {
    return Post(
        "github-rest-api-issue",
        "GitHub の REST API で Issue 情報を取得する方法いろいろ",
        "2024-02-03",
        "GitHub REST API を使って Issue 情報を取得する方法をまとめた記事。Public/Private リポジトリでの取得方法やフィルタリングについて解説。",
        { b =>
            h2(b, "GitHub の REST API で Issue 情報を取得する方法いろいろ")
            p(b, "この記事では、GitHub の REST API を使って Issue 情報を取得する方法を詳しく解説しています。まくまく Git ノートによるまとめです。")
            h2(b, "あるリポジトリの Issues の一覧を取得する")
            p(b, "GitHub の /repos/<ユーザー名>/<リポジトリ名>/issues という REST API エンドポイントにアクセスすると、指定したリポジトリ内の Issue の一覧を取得することができます。特定の Organization が提供しているリポジトリを指定するときは、ユーザー名の部分を Organization名に置き換えてください。")
            h2(b, "Public リポジトリの場合")
            p(b, "Public リポジトリの情報は、誰でも簡単に取得することができます。curl コマンドを使って REST API を呼び出すサンプルです。")
            raw(b, "<blockquote>curl https://api.github.com/repos/$USER_NAME/$REPO_NAME/issues</blockquote>")
            p(b, "HTTP レスポンスのヘッダ情報も確認したい場合は、-i オプションを追加してください。GET リクエストにより、Issue のリスト（PullRequest も含む）が JSON 形式で返されます。")
            h2(b, "Private リポジトリの場合")
            p(b, "Private なリポジトリの情報を単純に GET リクエストで取得しようとすると、Not Found メッセージが返されます。Private リポジトリの存在に気づかれないようにするためのセキュリティ上の対策とされています。")
            p(b, "Private リポジトリから Issue の一覧を取得するには、Personal access token や OAuth トークンを使ってアクセスする必要があります。")
            raw(b, "<blockquote>curl -H \"Authorization: token $TOKEN\" https://api.github.com/repos/$USER_NAME/$REPO_NAME/issues</blockquote>")
            h2(b, "あるユーザーにアサインされた Issue の一覧を取得する")
            p(b, "/user/issues という REST API エンドポイントにアクセスすると、認証済みユーザーにアサインされた Issue の一覧を取得することができます。")
            h2(b, "取得する Issue の種類を指定する")
            p(b, "URL 末尾にクエリパラメーターを追加することで、取得する Issue を絞り込むことができます。state=closed で Close 済みの Issue を取得、labels パラメーターで特定のラベルを持つ Issue を取得できます。")
            a(b, attrs("href", "https://maku77.github.io/p/uvoibwi/"), "阅读原文")
        }
    )
}
