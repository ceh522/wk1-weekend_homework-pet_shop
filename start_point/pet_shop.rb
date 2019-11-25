#Check about PDA

# @customers = [
#   {
#     name: "Alice",
#     pets: [],
#     cash: 1000
#   },
#   {
#     name: "Bob",
#     pets: [],
#     cash: 50
#   },
#   {
#     name: "Jack",
#     pets: [],
#     cash: 100
#   }
# ]
#
# @new_pet = {
#   name: "Bors the Younger",
#   pet_type: :cat,
#   breed: "Cornish Rex",
#   price: 100
# }
#
#
# @pet_shop = {
# pets: [
#      {
#        name: "Sir Percy",
#        pet_type: :cat,
#        breed: "British Shorthair",
#        price: 500
#      },
#      {
#        name: "King Bagdemagus",
#        pet_type: :cat,
#        breed: "British Shorthair",
#        price: 500
#      },
#      {
#       name: "Sir Lancelot",
#        pet_type: :dog,
#        breed: "Pomsky",
#        price: 1000,
#      },
#      {
#        name: "Arthur",
#        pet_type: :dog,
#        breed: "Husky",
#        price: 900,
#      },
#      {
#        name: "Tristan",
#        pet_type: :dog,
#       breed: "Basset Hound",
#       price: 800,
#     },
#     {
#       name: "Merlin",
#       pet_type: :cat,
#       breed: "Egyptian Mau",
#       price: 1500,
#     }
#   ],
#   admin: {
#     total_cash: 1000,
#     pets_sold: 0,
#   },
#   name: "Camelot of Pets"
# }

# Question 1
def pet_shop_name(pet_shop)
  return pet_shop[:name]
  return name
end

# test
# def test_pet_shop_name
#   name = pet_shop_name(@pet_shop)
#   assert_equal("Camelot of Pets", name)
# end


#  Question 2
def total_cash(pet_shop)
  sum = pet_shop[:admin][:total_cash]
  return sum
end

# test
# def test_total_cash
#   sum = total_cash(@pet_shop)
#   assert_equal(1000, sum)
# end

# Questions 3 and 4
def add_or_remove_cash(pet_shop, alteration_to_cash)
  cash = pet_shop[:admin][:total_cash] += alteration_to_cash
end

#tests
# def test_add_or_remove_cash__add
#   add_or_remove_cash(@pet_shop,10)
#   cash = total_cash(@pet_shop)
#   assert_equal(1010, cash)
# end
#
# def test_add_or_remove_cash__remove
#   add_or_remove_cash(@pet_shop,-10)
#   cash = total_cash(@pet_shop)
#   assert_equal(990, cash)
# end

# Question 5
def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

#test
# def test_pets_sold
#   sold = pets_sold(@pet_shop)
#   assert_equal(0, sold)
# end

# Question 6
def increase_pets_sold(pet_shop, number_of_pets_sold)
  return pet_shop[:admin][:pets_sold] += number_of_pets_sold
end

# test
# def test_increase_pets_sold
#   increase_pets_sold(@pet_shop,2)
#   sold = pets_sold(@pet_shop)
#   assert_equal(2, sold)
# end

# Question 7
def stock_count(pet_shop)
  return pet_shop[:pets].length
end

#test
# def test_stock_count
#   count = stock_count(@pet_shop)
#   assert_equal(6, count)
# end

# Questions 8 and 9 NOT WORKING
def pets_by_breed(pet_shop, breed_searching_for)
  pets = []
  for pet in pet_shop[:pets]
    if pet == breed_searching_for             #if pet[:breed] ==
      then breed_searching_for>> pets.count   #spoken to Jen - didn't need .count - the test does the .count
    end                                       #prob don't need then
  end
  return pets
  return pets.count                           #remove
end

#test
# def test_find_pet_by_name__returns_pet
#   pet = find_pet_by_name(@pet_shop, "Arthur")
#   assert_equal("Arthur", pet[:name])
# end
#
# def test_find_pet_by_name__returns_nil
#   pet = find_pet_by_name(@pet_shop, "Fred")
#   assert_nil(pet)
# end

# def test_all_pets_by_breed__found
#   pets = pets_by_breed(@pet_shop, "British Shorthair")
#   assert_equal(2, pets.count)
# end
#
# def test_all_pets_by_breed__not_found
#   pets = pets_by_breed(@pet_shop, "Dalmation")
#   assert_equal(0, pets.count)
# end


#Answer
# def pets_by_breed(pet_shop, breed)
#    matches = []
#    for pet in pet_shop[:pets]
#      matches << pet if(pet[:breed] == breed)
#    end
#    return matches
#  end
#
# def test_all_pets_by_breed__found
#   pets = pets_by_breed(@pet_shop, "British Shorthair")
#   assert_equal(2, pets.count)
# end
#
# def test_all_pets_by_breed__not_found
#   pets = pets_by_breed(@pet_shop, "Dalmation")
#   assert_equal(0, pets.count)


# Questions 10 and 11 NOT WORKING
def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet_shop[:pets][:name].include(pet_name)       #Jen if pet[:name]== name_to_find
      return pet_name                                 #pet_found = pet end end pet_found
    end
    return nil
  end
end


#Answer
#  def find_pet_by_name(pet_shop, pet_name)
#    match = nil
#    for pet in pet_shop[:pets]
#      match = pet if(pet[:name] == pet_name)
#    end
#    return match
#  end
#

# Question 12  NOT WORKING
def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    if pet_shop[:pets][:name].include(pet_name)    #Jen - taek the function, include that then work on it - to delete
      pet.delete
    end
    return nil
  end
end

# test
# def test_remove_pet_by_name
#   remove_pet_by_name(@pet_shop, "Arthur")
#   pet = find_pet_by_name(@pet_shop,"Arthur")
#   assert_nil(pet)
# end


#Answer

# def remove_pet_by_name(pet_shop, pet_name)
# #    pet_to_delete = find_pet_by_name(pet_shop, pet_name)
# #    pet_shop[:pets].delete(pet_to_delete)
# #  end

#errors mainly to do with treating array like a hash? e.g: no implicit conversion of Symbol into Integer - syntax problem? understanding exactly where refering to in array and hashes?
#spoken to Jen - I was trying to run functions in my code that the test should be running, not me


# Question 13
def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
  count = pet_shop[:pets].length
  return count
end

# test
# def test_add_pet_to_stock
#   add_pet_to_stock(@pet_shop, @new_pet)
#   count = stock_count(@pet_shop)
#   assert_equal(7, count)
# end


# Question 14
def customer_cash(customers)
  return customers[:cash]
end

# test
# def test_customer_cash
#   cash = customer_cash(@customers[0])
#   assert_equal(1000, cash)
# end


# Question 15
def remove_customer_cash(customer, removed_cash)
  return customer[:cash] -= removed_cash
end

# test
# def test_remove_customer_cash
#   customer = @customers[0]
#   remove_customer_cash(customer, 100)
#   assert_equal(900, customer[:cash])
# end


#Question 16
def customer_pet_count(customers)
  return customers[:pets].count
end

# test
# def test_customer_pet_count
#   count = customer_pet_count(@customers[0])
#   assert_equal(0, count)
# end

#Question 17
def add_pet_to_customer(customer, new_pet)
    customer[:pets] << new_pet
    customer_pet_count = customer[:pets].length
    return customer_pet_count
  end

# test
#   def test_add_pet_to_customer
#     customer = @customers[0]
#     add_pet_to_customer(customer, @new_pet)
#     assert_equal(1, customer_pet_count(customer))
#   end
