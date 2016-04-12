require './test'
require 'date'
class TypeCheckerTester
  include TypeChecker
end


tc = TypeCheckerTester.new

p "---------------测试日期-----------------"
dt = Date.new
p tc.is_date?(dt)
p tc.is_date?("2015abcd")

p "---------------测试节目单元-----------------"
str1 = "13:39 都市茶座\n        之江城岔巴子"
p tc.is_programming_block?(str1)

str2 = "safa13:39 都市茶座\n        之江城岔巴子"
p tc.is_programming_block?(str2)

str2_1 = "43:39 都市茶座\n        之江城岔巴子"
p tc.is_programming_block?(str2_1)

p "---------------测试落单节目名称-----------------"
str3 = "双尸迷案"
p tc.is_programming_name?(str3)

str4 = "111222"
p tc.is_programming_name?(str4)

p "---------------测试提取节目元素-----------------"
str5 = "13:39 都市茶座\n        之江城岔巴子"
p tc.fetch_time_and_programming_name(str5)


p "---------------测试星期-----------------"
str6 = "星期一"
p tc.is_week?(str6)

str7 = "星期日"
p tc.is_week?(str7)

p "---------------测试栏目名称----------------"
str8 = "武汉广播电视台文体频道    —5 节目表"
p tc.is_title?(str8)

str9 = "武汉频道测试用例"
p tc.is_title?(str9)