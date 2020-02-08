# Question 1
def pet_shop_name(pet_shop)
  return pet_shop[:name]
  return name
end

#  Question 2
def total_cash(pet_shop)
  sum = pet_shop[:admin][:total_cash]
  return sum
end

# Questions 3 and 4
def add_or_remove_cash(pet_shop, alteration_to_cash)
  cash = pet_shop[:admin][:total_cash] += alteration_to_cash
end

# Question 5
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

# Question 6
def increase_pets_sold(pet_shop, number_of_pets_sold)
  return pet_shop[:admin][:pets_sold] += number_of_pets_sold
end

# Question 7
def stock_count(pet_shop)
  return pet_shop[:pets].length
end

# Questions 8 and 9

# When I initially worked on the question I got to:
# def pets_by_breed(pet_shop, breed_searching_for)
#   pets = []
#   for pet in pet_shop[:pets]
#     if pet == breed_searching_for             # Feedback on errors: if pet[:breed] ==
#       then breed_searching_for>> pets.count   #spoke to classmate - didn't need .count - the test does the .count
#     end                                       #prob don't need then
#   end
#   return pets
#   return pets.count                           #remove
# end

# What I produced when I revisited the homework:

def pets_by_breed(pet_shop, breed_searching_for)
  pets_found = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed_searching_for
      then pets_found << pet[:breed]
    end
  end
  return pets_found
end

# When I initially worked on the question I got to:

# Questions 10 and 11 NOT WORKING
# def find_pet_by_name(pet_shop, pet_name)
#   for pet in pet_shop[:pets]
#     if pet_shop[:pets][:name].include(pet_name)       #Feedback on errors: spoke to classmate: if pet[:name]== name_to_find
#       return pet_name                                 #pet_found = pet end end pet_found
#     end
#     return nil
#   end
# end

# What I produced when I revisited the homework:

def find_pet_by_name(pet_shop, pet_name)
  found_name = nil
  for pet in pet_shop[:pets]
    found_name = pet if (pet[:name]== pet_name)
  end
  return found_name
end

# When I initially worked on the question I got to:

# Question 12  NOT WORKING
# def remove_pet_by_name(pet_shop, pet_name)
#   for pet in pet_shop[:pets]
#     if pet_shop[:pets][:name].include(pet_name)    #spoken to classmate - take the function, include that then work on it - to delete
#       pet.delete
#     end
#     return nil
#   end
# end

# What I produced when I revisited the homework:
def remove_pet_by_name(pet_shop, pet_name)
  pet_to_remove = find_pet_by_name(pet_shop, pet_name)
  pet_shop[:pets].delete(pet_to_remove)
end

#Learning points I identified when I first did the homework:
#errors mainly to do with treating array like a hash? e.g: no implicit conversion of Symbol into Integer - syntax problem? understanding exactly where refering to in array and hashes?
#spoken to classmate - I was trying to run functions in my code that the test should be running, not me

# Question 13
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
  count = pet_shop[:pets].length
  return count
end

# Question 14
def customer_cash(customers)
  return customers[:cash]
end

# Question 15
def remove_customer_cash(customer, cash_to_remove)
  return customer[:cash] -= cash_to_remove
end

#Question 16
def customer_pet_count(customers)
  return customers[:pets].count
end

#Question 17
def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
  customer_pet_count = customer[:pets].length
  return customer_pet_count
end
