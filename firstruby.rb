class example
  observe:base_model
  
  %w(update create destroy).each { |name|
    define_method("after_#{name}") {|record| expire_cache_for(record)}}
  private
  
  def expire_cache_for(_record)
    @cache ||= ActionController:Base.New
  end
end
