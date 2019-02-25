class ToppagesController < ApplicationController
  #HTTPリクエスト toppages/indexを受け取りアクション
  def index
  end
  #最後にはデフォルトで
  #render:自身のアクション名 が呼び出される
  #ここではapp/views/toppages/index.html.erb が呼び出される
  #なんでトップページでコントロール分けてるのかと思ったが、おそらく
  #一つのコントロールファイルが担当できるのは1セットのRESTfulルーティングだから
  #なおこのページに限っては、アクションがindex枝る必要はないのではないか
end
