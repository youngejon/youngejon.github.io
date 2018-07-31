class UtilitiesController < ApplicationController
  def index
  end

  def pick_lucky_numbers
    # box = request.remote_ip # 우표가 없는 박스
    numbers = (1..45).to_a
    random_numbers = numbers.sample 6# 45개의 숫자 중에서 6개를 뽑는다.
    @lucky_numbers = random_numbers.sort
    
    @lucky_numbers_fin = (1..45).to_a.sample(6).sort
    @array = (1..45).to_a
  end

  def get_stock_info
  end
  
end
