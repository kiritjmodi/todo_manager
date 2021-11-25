class User < ActiveRecord::Base
  def to_p
    "#{id}. #{name.to_s} #{email} #{password}"
  end
end
