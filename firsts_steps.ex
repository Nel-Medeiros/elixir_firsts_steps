defmodule M do
  def main do
    data_stuff()
  end

  def data_stuff do
    #Type verifications
    IO.puts "TYPE VERIFICATIONS"
    my_int = 123
    IO.puts "Integer #{is_integer(my_int)}"

    my_float = 3.14
    IO.puts "Float #{is_float(my_float)}"

    IO.puts "Atom #{is_atom(:McDonalds)}"

    IO.puts "Atom with spaces #{is_atom(:"Burger King")}"
    #=====================================================

    #Comparings
    IO.puts ""
    IO.puts "COMPARINGS"
    IO.puts "2 == 2.0 : #{2 == 2.0}"
    IO.puts "2 === 2.0 : #{2 === 2.0}"
    IO.puts "2 != 2.0 : #{2 != 2.0}"
    IO.puts "2 !== 2.0 : #{2 !== 2.0}"

    IO.puts "5 > 7 : #{5 > 7}"
    IO.puts "5 >= 7 : #{5 >= 7}"
    IO.puts "5 < 7 : #{5 < 7}"
    IO.puts "5 <= 7 : #{5 <= 7}"
    #=====================================================

    #String manipulation
    IO.puts ""
    IO.puts "STRING MANIPULATION"
    my_string = "My Sentence"
    IO.puts "The length of #{my_string} is : #{String.length(my_string)}"

    longer_string = my_string <> " " <> "is longer"
    IO.puts "The length of #{longer_string} is : #{String.length(longer_string)}"

    IO.puts "Equals : #{"Egg" === "egg"}"
    IO.puts "Equals : #{"Egg" === "Egg"}"

    IO.puts "Contains My ? #{String.contains?(my_string, "My")}"

    IO.puts "First char is : #{String.first(my_string)}"

    IO.puts "The char at the Index 4 is : #{String.at(my_string, 4)}"

    IO.puts "Substring : #{String.slice(my_string, 3, 8)}"

    IO.inspect String.split(longer_string, " ")

    IO.puts "Reverse the string : #{String.reverse(longer_string)}"

    IO.puts "Make the string uppercase : #{String.upcase(longer_string)}"

    IO.puts "Make the string lowercase : #{String.downcase(longer_string)}"

    IO.puts "Make the string capitalized : #{String.capitalize(longer_string)}"
    #=====================================================================

    #Arithmetics
    IO.puts ""
    IO.puts "ARITHIMETICS:"
    IO.puts "5 + 4 = #{5+4}"
    IO.puts "5 - 4 = #{5-4}"
    IO.puts "5 * 4 = #{5*4}"
    IO.puts "5 / 4 = #{5/4}"
    IO.puts "5 div 4 = #{div(5,4)}"
    IO.puts "5 rem 4 = #{rem(5,4)}"
    #=====================================================================

    #Logical operators
    IO.puts ""
    IO.puts "LOGICAL OPERATORS"
    age = 16
    IO.puts "Vote & Drive : #{(age >= 16) && (age >= 18)}"
    IO.puts "Vote or Drive : #{(age >= 16) || (age >= 18)}"
    IO.puts "'true' will output: #{true}, and 'false' will output #{false}"
    IO.puts "'!true' and 'not true' will both output : #{!true or not true}"
    IO.puts "'!false' and 'not false' will both output : #{!false or not false}"
    #=====================================================================

    #Condicionals
    IO.puts ""
    IO.puts "CONDICIONALS"
    # --- if ---
    age = 15
    if age >= 18 do
      IO.puts "Can Vote and Drive"
      else if age >= 16 do
        IO.puts "Can Vote"
      else
        IO.puts "Not adult yet."
      end
    end
    # --- unless ---
    age = 18
    unless age === 18 do
      IO.puts "You are not 18"
    else
      IO.puts "You are 18"
    end
    # --- cond ---
    cond do
      age >= 14 -> IO.puts "You can wait"
      age >= 16 -> IO.puts "You can drive"
      age >= 18 -> IO.puts "You can Vote"
      true -> IO.puts "Default"
    end
    # --- case ---
    case 2 do
      1 -> IO.puts "Entered 1"
      2 -> IO.puts "Entered 2"
      _ -> IO.puts "Default"
    end
    # --- ternary ---
    IO.puts "Ternary : #{if age >= 18, do: "Can Vote", else: "Can not Vote"}, you are #{age}"

    #Tuples
    IO.puts ""
    IO.puts "TUPLES"
    my_tuple = {175, 3.14, :McDonalds}

    IO.puts "Is a tuple ? #{is_tuple(my_tuple)}"

    my_tuple2 = Tuple.append(my_tuple, 42)

    IO.puts "Age : #{elem(my_tuple2, 3)}"

    IO.puts "Size : #{tuple_size(my_tuple2)}"

    my_tuple3 = Tuple.delete_at(my_tuple2, 0)

    my_tuple4 = Tuple.insert_at(my_tuple3, 0, 2020)

    many_zeroes = Tuple.duplicate(0, 5)

    {age, height, name} = {33, 1.75, "Emanuel"}
    IO.puts "Name : #{name}"

    #Lists
    IO.puts ""
    IO.puts "LISTS"
    list1 = [1,2,3]
    list2 = [4,5,6]

    list3 = list1 ++ list2

    list4 = list3 -- list1

    IO.puts 6 in list4

    [head | tail] = list3
    IO.puts "Head : #{head}"

    IO.write "Tail : "
    IO.inspect tail

    IO.inspect [97, 98]

    IO.inspect [97, 98], char_lists: :as_lists

    # to iterate over a colection Elixir uses Enum.each
    Enum.each tail, fn item ->
      IO.puts item
    end

    words_list = ["Lord", "of the", "Rings"]
    Enum.each words_list, fn word ->
      IO.puts word
    end

    #recursive functions
    pokemon_list = ["Pikachu", "Bubasaur", "Squirtle", "Stary", "Onyx"]
    display_list(pokemon_list)

    IO.puts display_list(List.delete(pokemon_list, "Onyx"))
    IO.puts display_list(List.delete_at(pokemon_list, 1))
    IO.puts display_list(List.insert_at(pokemon_list, 1, "Meaw"))

    IO.puts List.first(pokemon_list)
    IO.puts List.last(pokemon_list)

    my_stats = [name: "Nel", nick: "nel_paiva"]


    #Maps
    capitals = %{"Rio de Janeiro" => "Rio de Janeiro", "Parana" => "Curitiba", "Santa Catarina" => "Florianopolis"}
    IO.puts "Capital de Santa Catarina: #{capitals["Santa Catarina"]}"

    capitals2 = %{minas_gerais: "Belo Horizonte", acre: "Rio Branco", amazonas: "Manaus"}
    IO.puts "Capital de Acre: #{capitals2.acre}"

    capitals3 = Dict.put(capitals, "Rio Grande do Sul", "Porto Alegre")


    #Pattern Match
    #can retrieve data from diferent types of data structures
    [length, width] = [20, 30]
    IO.puts "Width: #{width}"

    [_,[_, a]] = [20, [50, 60]]
    IO.puts "Data: #{a}"


    #Anonimous Function
    #has no name and can be passed to another function
    get_sum = fn (x, y) -> x + y end
    IO.puts "6 + 7 = #{get_sum.(6, 7)}"

    #a shorthand of the above function is
    get_less = &(&1 - &2)
    IO.puts "10 - 5 = #{get_less.(10, 5)}"

    #we can use anonymous function when we will receive a unknown numbers of
    #atributes inside of it
    add_sum = fn
      {x, y} -> IO.puts "#{x} + #{y} = #{x+y}"
      {x, y, z} -> IO.puts "#{x} + #{y} + #{z} = #{x+y+z}"
    end
    add_sum.({1,2})
    add_sum.({1,2, 3})

    #we can also work with defaults values using '\\'
    IO.puts do_it()

    #Recursion
    IO.puts "Factorial of 4: #{factorial(4)}"

    #Loop recursion
    IO.puts "Sum : #{sum([1,2,3])}"
    loop(5,1)

    #Enumerables: is a data type that allows its values to be counted of

    #check if all values are even inside of a list
    IO.puts "All Even List: #{Enum.all?([1,2,3], fn(n) -> rem(n, 2) == 0 end)}"

    #check if any of the values are even inside of a list
    IO.puts "Any Even List: #{Enum.any?([1,2,3], fn(n) -> rem(n, 2) == 0 end)}"

    #Print every item inside of a list
    Enum.each([1,2,3], fn(n) -> IO.puts n end)

    #Double each value of a list
    dbl_list = Enum.map([1,2,3], fn(n) -> n * 2 end)
    IO.inspect dbl_list
    #Reduce a list to a single value
    sum_values = Enum.reduce([1,2,9], fn(n, sum) -> n + sum end)
    IO.puts "Sum : #{sum_values}"

    #Return just unique values of a list
    IO.inspect Enum.uniq([1,2,2,3,4,4,5,5,6])

    #List comprehensions
    dbl_list = for n <- [1,2,3], do: n * 2
    IO.inspect dbl_list

    even_list = for n <- [1,2,3,4], rem(n,2) == 0, do: n
    IO.inspect even_list

    #Exception handling
    err = try do
      5 / 0

    rescue
      ArithmeticError -> "Can't Divide by zero."
    end
    IO.puts err

    #Concurrenci
    spawn(fn() -> conc_loop(50, 1) end)
    spawn(fn() -> conc_loop(100, 50) end)

    #Send messages to processes
    send(self(), {:french, "Bob"})

    receive do
      {:german, name} -> IO.puts "Gutten Tag #{name}"
      {:french, name} -> IO.puts "Bon Jour #{name}"
      {:english, name} -> IO.puts "Good Morning #{name}"

    after
      500 -> IO.puts "Time up"
    end

  end

  #this fn will get whathever it had received when it was called an
  #split in had and tail, print the head and call it self again passing
  #the tail so the process can be repeated til the tail are empty,
  #when this happens the function will pass nil ahead and stop working
  def display_list([head | tail]) do
    IO.puts head
    display_list(tail)
  end
  def display_list([]), do: nil

  def do_it(x \\ 1, y \\ 1) do
    x + y
  end

  def factorial(num) do
    if num <= 1 do
      1
    else
      result = num * factorial(num - 1)
      result
      # 1st : result = 4 * factorial(3) = 4 * result below(6) = 24
      # 2nd : result = 3 * factorial(2) = 3 * result below(2) = 6
      # 3rd : result = 2 * factorial(1) 'will stop and return 1' = 2 * 1 = 2
    end
  end

  def sum([]), do: 0 #will return 0 if sum receive an empty array
  def sum([hd|tl]), do: hd + sum(tl)

  def loop(0, _), do: nil #will return nil if loop receive 0

  def loop(max, min) do
    if max < min do
      loop(0, min)
    else
      IO.puts "Num : #{max}"
      loop(max - 1, min)
    end
  end

  def conc_loop(0, _), do: nil #will return nil if loop receive 0

  def conc_loop(max, min) do
    if max < min do
      conc_loop(0, min)
    else
      IO.puts "Num : #{max}"
      conc_loop(max - 1, min)
    end
  end

end
