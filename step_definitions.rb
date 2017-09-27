And(/^I select (\d+) in "picker" for (iOS|Android)$/) do |value, picker, platform|
  case platform
  when 'iOS'
    case picker
    when 'first'
      touch(pickerObjects.firstpicker)
      screenshot_and_raise("Clear button is not seen") if element_does_not_exist(pickerObjects.clear_btn) #Validating if the picker field is opened
      select_a_value_in_picker_iOS(pickerObjects.firstpicker,value)
      touch(pickerObjects.set_btn)
      screenshot_and_raise("Clear button is seen") if element_exists(pickerObjects.clear_btn) #Validating if the picker field is closed
    when 'second'
      touch(pickerObjects.secondpicker)
      screenshot_and_raise("Clear button is not seen") if element_does_not_exist(pickerObjects.clear_btn) #Validating if the picker field is opened
      select_a_value_in_picker_iOS(pickerObjects.secondpicker,value)
      touch(pickerObjects.set_btn)
      screenshot_and_raise("Clear button is seen") if element_exists(pickerObjects.clear_btn) #Validating if the picker field is closed
    else
      raise("#{picker} is an invalid argument")
    end
  when 'Android'
    case picker
    when 'first'
      touch(pickerObjects.firstpicker)
      screenshot_and_raise("Clear button is not seen") if element_does_not_exist(pickerObjects.clear_btn) #Validating if the picker field is opened
      select_a_value_in_picker_android(pickerObjects.firstpicker,value)
      touch(pickerObjects.set_btn)
      screenshot_and_raise("Clear button is seen") if element_exists(pickerObjects.clear_btn) #Validating if the picker field is closed
    when 'second'
      touch(pickerObjects.secondpicker)
      screenshot_and_raise("Clear button is not seen") if element_does_not_exist(pickerObjects.clear_btn) #Validating if the picker field is opened
      select_a_value_in_picker_android(pickerbjcts.secondpicker,value)
      touch(pickerObjects.set_btn) 
      screenshot_and_raise("Clear button is seen") if element_exists(pickerObjects.clear_btn) #Validating if the picker field is closed
    else
      raise("#{picker} is an invalid argument")
    end
  else
    raise("#{platform} is an invalid argument")
  end
end

Then(/^I should see (\d+) selected in (first|second) picker for (iOS|Android)$/) do |value,picker, platform|
  case platform
  when 'iOS'
    case picker
    when 'first'
      touch(pickerObjects.firstpicker)
      selectedvalue = query(pickerObjects.firstpicker)[0]['label']
      screenshot_and_raise("Clear button is not seen") if element_does_not_exist(pickerObjects.clear_btn) #Validating if the picker field is opened
      screenshot_and_raise("Selected value is not seen") if value != selectedvalue.split(".")[0]
      screenshot_and_raise("Decimal value is not seen") if selectedvalue.split(".")[1].nil?
      touch(pickerObjects.cancel_btn)
      screenshot_and_raise("Clear button is seen") if element_exists(pickerObjects.clear_btn) #Validating if the picker field is closed
    when 'second'
      touch(pickerObjects.secondpicker)
      selectedvalue = query(pickerObjects.secondpicker)[0]['label']
      screenshot_and_raise("Clear button is not seen") if element_does_not_exist(pickerObjects.clear_btn) #Validating if the picker field is opened
      screenshot_and_raise("Selected value is not seen") if value != selectedvalue.split(".")[0]
      screenshot_and_raise("Decimal value is not seen") if selectedvalue.split(".")[1].nil?
      touch(pickerObjects.cancel_btn)
      screenshot_and_raise("Clear button is seen") if element_exists(pickerObjects.clear_btn) #Validating if the picker field is closed
    else
     raise("#{picker} is an invalid argument")
    end
  when 'Android'
    case picker
       when 'first'
      touch(pickerObjects.firstpicker)
      selectedvalue = query(pickerObjects.firstpicker)[0]['label']
      screenshot_and_raise("Clear button is not seen") if element_does_not_exist(pickerObjects.clear_btn) #Validating if the picker field is opened
      screenshot_and_raise("Selected value is not seen") if value != selectedvalue.split(".")[0]
      screenshot_and_raise("Decimal value is not seen") if selectedvalue.split(".")[1].nil?
      touch(pickerObjects.cancel_btn)
      screenshot_and_raise("Clear button is seen") if element_exists(pickerObjects.clear_btn) #Validating if the picker field is closed
    when 'second'
      touch(pickerObjects.secondpicker)
      selectedvalue = query(pickerObjects.secondpicker)[0]['label']
      screenshot_and_raise("Clear button is not seen") if element_does_not_exist(pickerObjects.clear_btn) #Validating if the picker field is opened
      screenshot_and_raise("Selected value is not seen") if value != selectedvalue.split(".")[0]
      screenshot_and_raise("Decimal value is not seen") if selectedvalue.split(".")[1].nil?
      touch(pickerObjects.cancel_btn)
      screenshot_and_raise("Clear button is seen") if element_exists(pickerObjects.clear_btn) #Validating if the picker field is closed
    else
     raise("#{picker} is an invalid argument")
    end
  else
    raise("#{platform} is an invalid argument")
  end
end