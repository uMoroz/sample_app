Rspec::Matchers.define :match_exactly do |expected_match_count, selector|
  match do |context|
    @matched = context.all(selector).size
    @matched == expected_match_count
  end

   failure_message_for_should do
    "expected '#{selector}' to match exactly #{expected_match_count}, but matched #{@matched}"
   end
   
   failure_message_for_should_not do
    "expected '#{selector}' to not match exactly #{expected_match_count}, but it did"
   end
    
end