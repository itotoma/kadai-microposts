class ToppagesController < ApplicationController
  def index
  end
  #最後にはデフォルトで
  #render:自身のアクション名 が呼び出される
  #ここではapp/views/toppages/index.html.erb が呼び出される
end
