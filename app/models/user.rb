class User < ActiveRecord::Base
  belongs_to :coach
  belongs_to :calender
  has_one :cart
  belongs_to :item, :foreign_key=>'program_id'
  belongs_to :group_exercise, :foreign_key=>'group_id'
  has_many :all_my_bookings
  before_create { generate_token(:auth_token) } #NEW

  attr_accessor :password
  attr_accessible :id, :username, :email, :password, :password_confirmation, :admin, :auth_token, :coach_id, :change_limit, :program_id, :profile_pic, :group_id, :faceuid, :cart_id #NEW
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i #For validation of email i use this regex.
  validates :username, :presence      => true,
            :uniqueness               => {:case_sensitive => false},
            :length                   => { :in => 3..20 }
  #----------------------------------------------------------------------------
  validates :email,         :presence => true,
                          :uniqueness => true,
                              :format => EMAIL_REGEX
  #----------------------------------------------------------------------------
  validates :password,  :confirmation => true #password_confirmation attr
  #----------------------------------------------------------------------------
  validates_length_of  :password, :in => 6..100,
                                  :on => :create

  before_save :encrypt_password
  after_save :clear_password



  def generate_token(column) #NEW
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

  def self.add_faceuid(authorized_user, facebookuser)
    user = authorized_user
    user.faceuid = facebookuser.uid
    user.save!
  end

  def encrypt_password
    if password.present?
      self.salt = BCrypt::Engine.generate_salt
      self.encrypted_password = BCrypt::Engine.hash_secret(password, salt)
    end
  end

  def clear_password
    self.password = nil
  end

  def self.change_pw(email,pswd)
    if(EMAIL_REGEX.match(email))
      user = User.find_by(:email => email)
    else
      user = User.find_by(:username => email)
    end

    user.password = nil #Do I need those two lines?
    user.password_confirmation = nil

    user.password = pswd
    user.password_confirmation = pswd

    user.save
  end

  def self.authenticate(username_or_email = "", login_password = "")
    if EMAIL_REGEX.match(username_or_email)
      user = User.find_by(:email => username_or_email)
    else
      user = User.find_by(:username => username_or_email)
    end
    if user && user.match_password(login_password)
      return user
    else
      return false
    end
  end

  def self.check_username_email(username_or_email = "")
    if EMAIL_REGEX.match(username_or_email)
      user = User.find_by(:email => username_or_email)
      return user
    else
      user = User.find_by(:username => username_or_email)
      return user
    end
  end


  def self.find_user_email(email ="")
    if EMAIL_REGEX.match(email)
      for user in User.all
        if user.email == email
          return true
        else
          return false
        end
      end
    else
      return false
    end
  end

  def self.add_genders(gender, currentuser)
    user = currentuser
    user.gender = gender
    user.save
  end

  def self.add_coach(coach, currentuser)
    user = currentuser
    user.coach_id = coach.id
    user.save
  end

  def self.add_program(a, currentuser)
    user = currentuser
    user.program_id = Item.find_by(:program => a).id
    user.save
  end


  def self.add_profilepic(currentuser, pic)
    user = currentuser
    user.profile_pic = pic
    user.save
  end

  def self.add_group_id(currentuser, group)
    user = currentuser
    user.group_id = group.id
    user.save
  end

  def self.remove_group_id(currentuser)
    user = currentuser
    user.group_id = nil
    user.save
  end

  def self.get_name
    username = User.where('username = ?', 'Thang')
    return username.to_s
  end

  def self.delete_faceuid(current_facebookuser)
    user = User.find_by(:faceuid => current_facebookuser.uid)
    user.faceuid = nil
    user.save
  end

  def admin?
    self.admin
  end

  def match_password(login_password = "")
    encrypted_password == BCrypt::Engine.hash_secret(login_password, salt)
  end

  def self.count_change_limit(user)
    current = user
    current.change_limit = current.change_limit-1
    current.save
  end

end
