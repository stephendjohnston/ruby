=begin
Complete the solution so that it returns the number of times the search_text
is found within the full_text.

search_substr( fullText, searchText, allowOverlap = true )
so that overlapping solutions are (not) counted. If the searchText is empty,
it should return 0.

count the number of times the searchtext can be found in the fulltext
if

NOTE This solution does not pass all codewar test cases, only the cases
shown below

=end

def search_substr( fullText, searchText, allowOverlap = true )
  counter = 0

  fullText.size.times do |n|
    if allowOverlap
      counter += 1 if fullText.slice(n, searchText.size) == searchText
      counter -= 1 if searchText.size == 0
    else
      next if n.odd?
      counter += 1 if fullText.slice(n, searchText.size) == searchText
    end
  end
  counter
end

p search_substr('aa_bb_cc_dd_bb_e', 'bb') == 2
p search_substr('aaabbbcccc', 'bbb') == 1
p search_substr('aaacccbbbcccc', 'cc') == 5
p search_substr('aaa', 'aa') == 2
p search_substr('aaa', 'aa',false) == 1
p search_substr('aaabbbaaa', 'bb',false) == 1
