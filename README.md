#4차산업혁명 선도인재 양성 프로젝트 과정
---
## 1. Week 1 Day 4:  Ruby 기초문법, CRUD_signup..

***

#### 1. 루비 특징

+ Object-oriented


+ Scripting Language
+ High-Level



my_age = 26

1) 소문자로 시작

2) 단어들은 _(underscore)으로 구분

3) $,@등의 기호들로 시작하지 말자

> @ = 인스턴스 변수



#### 2. Data 종류 - symbol

표기 방식 :name

String 과 같다고 생각하면 이해하기 쉽다



주로 함수 이름, 키 이름, 변수등의 ID로 사용된다

ex) student[:grade]



Hash

order = {"item" => "Corn Flakes", "weight" => 18}

order = {item => "Corn Flakes", weight: 18}



##### gem install rspec

require 'rspec'

require_relative 'xxxx



%q

%q (a,  e, i , o, u) = ["a", "e", "i", "o", "u"]



#### Array

array. combination

	  .reject

   	  .include



## Rails CRUD

+ rails g controller user

  1. routes

  2. controller

  3. view

     

+ rails g moder user

  + db 생성

  1. t.string  :email

  2. t.string :password

     + rake db:migrate -> user table생성 in **schema.rb**

  3. rails c 접속

     - User.all -> db 출력
     - gem 'rails_db' -> bundle install

  4. md5 암호화

     + rquire 'digest'
     + Digest::MD5.hexdigest('xxx') #string값

  5. rake db:drop = db자체를 삭제

     

+ 회원가입

  0. (root)user/index => 모든 유저 정보를 나열해준다

  = 회원가입 링크, 각각의 회원 정보 옆에는 수정, 삭제

  1. user/new => 회원가입페이지 form

  2. user/create => 회원가입완료

  3. user/modify:id => 자신의 정보를 수정하는 페이지

  4. user/update => 수정완료

  5. user/destroy/:id => 유저정보삭제

     

+ 로그인

  + 로그인으로 받아온 정보의 유저가 db에 있는지 확인

  ```ruby
  params[:email]
  if User.exists?(email: params[:email])
  	user = User.find_by(email: params[:email])
  	if user.password == params[:password]
  		session[:user_email] = user.id
  	end
  end

  ```

  + 만약에 있다면, 비밀번호가 맞는지 확인
  + 그것도 맞다면 로그인 완료


+ rails d controller user = 만든거 rm



### 세션과 쿠키

* ##### 1. 세션(session

1) http는 stateless라하다..

2) http에서는 페이지 이동을 새로운 연결로 인식한다.

+ ##### 2. 쿠키

1) 서버가 내 pc에 기억

2) cookie를 통해 한번이라도 연결이 되었다면 xxx가 서버에 접속을 할떄 정보만이 아니라 xxx 와 HTML.0번을 

    계속 전송

3) 로그인 user에 대한 정보를 cookie를 영구적이진 않치만 user가 아닌 session을 통해 서버에 저장

**= 이제는 session을 서버가 물고있고 xxx가 요청을 하면 session안에 xxx는 0번이다.**



