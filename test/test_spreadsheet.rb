require 'spreadsheet'

source = Spreadsheet.open '../source_files/source.xls' #whole excel file


sheet1 = source.worksheet 0  # The first sheet

sheet1.each do |row|
  # do something interesting with a row
  p row[0]
  p row[0].strftime("%Y-%m-%d") if row[0].is_a?(Date)

  #TODO : 
end