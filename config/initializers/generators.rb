#これは自分で作成したファイルだが、congig/initializers/の
#RubyファイルはRails起動時に自動的に全てが読み込まれる
Rails.application.config.generators do |g|
    g.stylesheets false
    g.javascripts false
    g.helper false
    g.skip_routes true
end

#設定内容
#CSS, JS, Helper 関係のファイルは自動生成されない
#Router にルーティングを自動的に追加しない