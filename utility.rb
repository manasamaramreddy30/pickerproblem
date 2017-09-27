def select_a_value_in_ios_picker(picker,value) # Assuming picker works for scroll method
  until(query(picker)[0]['label'] == value) do
   scroll(picker, :down)
  end
end

def select_a_value_in_android_picker(picker,value) # Assuming picker works for scroll method
  until(query(picker)[0]['label'] == value) do
   scroll(picker, :down)
  end
end