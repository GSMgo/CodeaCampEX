class Url < ActiveRecord::Base
  validate :is_url_correct
  # validates_format_of :long_url, :with => /[www]+.*/
  

  # Remember to create a migration!
  # Aqui debe ir el metodo para hacer las urls mas cortas
  before_create :make_short

  def is_url_correct 
    errors.add(:long_url, 'must start with www.') unless self.long_url.start_with?('www')
  end


  def make_short 
    short = self.long_url[4,6]
    self.short_url = short
  end

  def self.get_urls
    arr_obj= Url.all
    hash_urls = {}
    arr_obj.each do |x|
      hash_urls[x.long_url] = x.short_url
    end
    hash_urls
  end

 
end
