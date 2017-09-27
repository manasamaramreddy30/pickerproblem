class PickerObjects
  include PageObject
  label(:firstpicker, :id => 'picker_1')
  label(:secondpicker, :id => 'picker_2')
  button(:clear_btn, :id => 'clear')
  button(:cancel_btn, :id => 'cancel')
  button(:set_btn, :id => 'set')
end
