require 'spreadsheet'

source = Spreadsheet.open '../source_files/source.xls' #whole excel file


sheet1 = source.worksheet 0  # The first sheet

sheet1.each do |row|
  # do something interesting with a row
  p row[0]
  p "yes" if row[0].is_a?(Date)
end