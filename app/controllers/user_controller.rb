class UserController < ApplicationController
  def index
    if session[:user_id] #1번 아이디를 가진 사람이 있다면
      @email = User.find(session[:user_id]).email
    end
  end

  def new
  end

  def create
    require 'digest'
    @email = params[:user_email] #@email이라고 내가 임의로 생성
    @password = params[:user_password]
    encrypted_password = Digest::MD5.hexdigest(@password)
    User.create(
      email: @email,
      password: encrypted_password
    )
  end
  
  def login
    
  end
  
  def login_process
    require 'digest'
    if User.exists?(email: params[:user_email]) #email은 params이메일을 받아
    user = User.find_by(email: params[:user_email])
      if user.password == Digest::MD5.hexdigest(params[:user_password])
        session[:user_id] = user.id
        redirect_to '/'
      end
    end
  end
end
