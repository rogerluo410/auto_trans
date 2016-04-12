module TypeChecker

  def is_date?(arg)
    arg.is_a? Date
  end

  def date2str(arg)
    arg.strftime("%Y-%m-%d")
  end

  def is_programming_block?(arg)
    return false unless arg.is_a? String

    splited_list = arg.strip.split(' ')

    return false if splited_list.size < 2 and splited_list[1].empty? and splited_list[2].empty?
    return false unless /^[0-2]{1}[0-9]{0,1}\:[0-5]{1}[0-9]{1}/.match(splited_list[0]) #match like "07:33"
    return true if /\p{Han}/.match(splited_list[1].strip)
  end

  def is_programming_name?(arg)
    return false unless arg.is_a? String
    return false if arg.strip.split(' ').size != 1
    return true if arg.strip =~ /\p{Han}/ 
    return false
  end

  def fetch_time_and_programming_name(arg)
    splited_list = arg.strip.split(' ')
  end

  def is_week?(arg)
    case arg.strip
    when "星期一"
      true
    when "星期二"
      true
    when "星期三"
      true
    when "星期四"
      true
    when "星期五"
      true
    when "星期六"
      true
    when "星期天"
      true
    when "星期七"
      true
    when "礼拜天"
      true
    when "礼拜六"
      true  
    when "星期日"
      true   
    else
      false
    end              
  end

  def is_title?(arg)
    return false unless arg.is_a? String

    key_words = %W(电视台 频道 节目表)

    count = 0
    if /电视台/.match(arg)
      count += 1
    end

    if /频道/.match(arg)
      count += 1
    end

    if /节目表/.match(arg)
      count += 1 
    end
     
    count >= 2 ? true : false
  end

end