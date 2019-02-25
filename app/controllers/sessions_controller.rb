class SessionsController < ApplicationController
  #Model操作なし
  def new
  end

  def create
    #session の中のemailを取り出すときは以下のように。downcaseで小文字にしてる
    email = params[:session][:email].downcase
    password = params[:session][:password]
    if login(email, password)
      flash[:success] = 'ログインに成功しました'
      redirect_to @user
    else
      flash.now[:danger] = "ログインに失敗しました"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "ログアウトしました"
    redirect_to root_url
  end
  
  private
  
  def login(email, password)
    @user = User.find_by(email: email)
    if @user && @user.authenticate(password)
      #ログイン成功
      session[:user_id] = @user.id
      #ブラウザにはCookiとして、サーバにはセッションとしてログイン状態は維持される
      return true
    else
      return false
    end
  end
end
