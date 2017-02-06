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

# def find_pet_by_name(pet_shop, pet_name)
#   no_pet = []
#   # namepet = pet_shop[:name]

#   for pet in pet_shop[:pets]
#     if pet.has_value?(pet_name)
#       no_pet << pet 
#       return no_pet
#     else
#       no_pet << nil
#       return no_pet
#     end
#   end

# end

##solution with aid from colleague - simpler, less complex and less steps that may go wrong.
def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    return pet if ( pet[:name] == pet_name)
  end

  return nil
end

# def find_pet_by_name(pet_shop, pet_name)
  
#   pet_shop[:pets].select! {|k,v| v == pet_name}
#   return pet_shop

# end

def pets_in_stock(pet_shop)
  return pet_shop[:pets]
end


def remove_pet_by_name(pet_shop, pet_name)
  result = nil
  index = 0
  pets = pets_in_stock(pet_shop) #calling method within a method

    for pet in pets #taking the result from the outside method
      if ( pet[:name] == pet_name ) 
        result = pet 
        break
      end
    index += 1
    end 

    return if (result == nil)
      pets.delete_at(index)
  

end  ###uses find_pet_by_name within the method

def add_pet_to_stock(pet_shop, new_pet)

  pet_shop[:pets] << new_pet

end

def customer_pet_count(customers)

  return customers[:pets].size

end

def add_pet_to_customer(person, new_pet)

  person[:pets] << new_pet

  return person[:pets].size

end

# def customer_can_afford_pet(customer, new_pet)
#   if customer[:cash] >= new_pet[:price] return true
# end
