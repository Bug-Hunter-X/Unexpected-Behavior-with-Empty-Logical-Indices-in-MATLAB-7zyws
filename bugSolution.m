function result = myFunction(input)
% This function demonstrates a potential error in MATLAB related to
% implicit type conversion and unexpected behavior with logical indexing.

  if input > 10
    result = input * 2; % Normal calculation
  else
    result = input + 5; % Normal calculation
  end

  % Corrected section
  index = (result > 15);
  if ~isempty(index) % Check if the index is not empty
    result(index) = result(index) + 10; % Modify only if the index is not empty
  end
end