class Item < ApplicationRecord
  # Owner 에게 속해있어요!
  belongs_to :owner # 모델간의 관계에도 belong_to를 쓸 수 있음
end
  # 