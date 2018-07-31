class HomeController < ApplicationController
  def index
    # render html: '당신은 ' + request.remote_ip + ' 로 접속하셨습니다.'
    @box = request.remote_ip
  @lucky_numbers_fin = (1..45).to_a.sample(6).sort

  end
end
