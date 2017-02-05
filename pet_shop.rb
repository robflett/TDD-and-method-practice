def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  pet_shop[:admin][:total_cash] += cash
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  pet_shop[:admin][:total_cash] += cash
  return pet_shop[:admin][:total_cash]
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, new_sales)
  pet_shop[:admin][:pets_sold] += new_sales
  return pet_shop[:admin][:pets_sold]
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, dog_type)
  array_of_pets = []

  for pet in pet_shop[:pets]
    if pet.has_value?(dog_type)
      array_of_pets << pet
    end
  end

  return array_of_pets

end           

# def pets_by_breed(pet_shop, dog_type)
#   array_of_pets = []

#   for item in pet_shop[:pets]

#     if array_of_pets(dog_type)
#       array_of_pets(dog_type).push(item[:pets][:breed])
#     end

#   end 

#   return array_of_pets
#end            #trying to get an array that returns 2 to match the expected value. 2 refers to the amount of British Shorthairs - how to get the shorthairs to be counted but not the others??? If British Shorthairs == nil then delete that entry?
#The test is looking for 2 in the pets variable.