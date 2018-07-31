class Owner < ApplicationRecord # 관계를 명시하는 것
  # Owner는 여러개의 Items을 가지고 있어요.
  has_many :items # 복수형으로 써줘야 한다!
  has_many :hobbies
end
