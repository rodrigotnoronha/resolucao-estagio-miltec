class Colaborator < ActiveRecord::Base
  def self.choose(limit)
    @limit = limit
    @chose_colaborators = []

    @colaborators = Colaborator.all.order("salary ASC, age DESC")

    @sum_salary = 0;
    @colaborators.each do |colaborator|
      if @sum_salary <= @limit && (@limit - @sum_salary) >= colaborator.salary
        @sum_salary += colaborator.salary
        @chose_colaborators << colaborator
      end
    end
    @chose_colaborators
  end
end
