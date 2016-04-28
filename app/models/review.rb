class Review < ActiveRecord::Base

  def self.delete_comment(comment)
    com = comment
    com.destroy
  end

  def self.add_comment(input, pic, name)
    Review.create!(avatar: pic, name: name, comment: input)
  end

  def self.add_commentfacebook(input, uid, name)
    Review.create!(avatar: "http://graph.facebook.com/"+uid+"/picture", name: name, comment: input)
  end


end
