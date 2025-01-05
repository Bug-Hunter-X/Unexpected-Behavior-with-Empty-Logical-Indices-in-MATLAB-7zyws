function result = myFunction(input)
% This function demonstrates a potential error in MATLAB related to
% implicit type conversion and unexpected behavior with logical indexing.

  if input > 10
    result = input * 2; % Normal calculation
  else
    result = input + 5; % Normal calculation
  end

  % Error-prone section
  index = (result > 15); % logical indexing
  result(index) = result(index) + 10; % modifying the values based on logical indexing

  % unexpected behavior occurs when the input is such that no element 
  % satisfies the condition in the logical index.

  % Example: if input is 5. Then result = 10. 
  % The index would be an empty array. Then the next line would throw an error.

end