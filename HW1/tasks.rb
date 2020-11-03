@arr = (1..10).to_a
@arr_rnd = Array.new(10) { rand(-10..10) }

p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
p "Array : #{@arr}"
p "Even index : #{@arr.each_with_index{|val,index| p " #{val} " if index.even?}}"
p "Odd index : #{@arr.each_with_index{|val,index| p " #{val} " if index.odd?}}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'
p "Array : #{@arr}"
p "Odd index : #{@arr.each_with_index{|val,index| p " #{val} " if index.odd?}}"
p "Even index : #{@arr.each_with_index{|val,index| p " #{val} " if index.even?}}"

p '------------------------------------------------'
p 'Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ]. '
p "Array : #{@arr}"
j = nil
@arr.size.times {|i| j=i if (@arr[i] > @arr.first && @arr[i] <@arr.last)}
    if j == nil
       p "[]"
    else p "Result #{j}"
  end
p '------------------------------------------------'

p 'Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].'
p "Array : #{@arr}"
j = nil
@arr.size.times {|i| j=i if (@arr[i] > @arr.last && @arr[i] <@arr.first)}
    if j == nil
       p "Result []"
    else "Result #{j}"
  end
p '------------------------------------------------'

p 'Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.'
p "Array : #{@arr}"
@arr.index(@arr.first)+1.upto(@arr.index(@arr.last)-1){|i|@arr[i]+=@arr.first if @arr[i].even?}
p "Result #{@arr}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.'
p "Array : #{@arr}"
@arr.index(@arr.first)+1.upto(@arr.index(@arr.last)-1){|i|@arr[i]+=@arr.last if @arr[i].even?}
p "Result #{@arr}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять.'
p "Array : #{@arr}"
@arr.index(@arr.first)+1.upto(@arr.index(@arr.last)-1){|i|@arr[i]+=@arr.last if @arr[i].odd?}
p "Result #{@arr}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.'
p "Array : #{@arr}"
@arr.index(@arr.first)+1.upto(@arr.index(@arr.last)-1){|i|@arr[i]+=@arr.first if @arr[i].odd?}
p "Result #{@arr}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'
p "Array : #{@arr}"
p "Result #{@arr.map { |e| e.positive? ? @arr.min : e }}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Заменить все положительные элементы на значение максимального.'
p "Array : #{@arr}"
p "Result #{@arr.map!{|el| el > 0 ? @arr.max : el }}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.'
p "Array : #{@arr}"
p "Result #{@arr.map { |e| e.negative? ? @arr.min : e }}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.'
p "Array : #{@arr}"
p "Result #{@arr.map { |e| e.negative? ? @arr.max : e }}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.'
p "Array : #{@arr}"
p "Result #{@arr.unshift(@arr.pop)}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.'
p "Array : #{@arr}"
p "Result #{@arr.push(@arr.shift)}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти количество его локальных максимумов.'
p "Array : #{@arr_rnd}"
print ' Result '
maxima = []
@arr_rnd.each_index do|i|
  if i != 0 && i != @arr.length - 1
  maxima <<(@arr_rnd[i]) if @arr_rnd[i - 1] < @arr_rnd[i] && @arr_rnd[i] > @arr_rnd[i + 1]
    end
  end
p maxima.size
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти количество его локальных минимумов.'
p "Array : #{@arr_rnd}"
print ' Result '
minima = []
@arr_rnd.each_index do|i|
    if i != 0 && i != @arr.length - 1
      minima <<(@arr_rnd[i]) if @arr_rnd[i - 1] > @arr_rnd[i] && @arr_rnd[i] < @arr_rnd[i + 1]
    end
  end
p minima.size
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти максимальный из его локальных максимумов.'
p "Array : #{@arr_rnd}"
print ' Result '
maxima = []
@arr_rnd.each_index do|i|
    if i != 0 && i != @arr.length - 1
      maxima <<(@arr_rnd[i]) if @arr_rnd[i - 1] < @arr_rnd[i] && @arr_rnd[i] > @arr_rnd[i + 1]
    end
  end
p maxima.max
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти минимальный из его локальных минимумов.'
p "Array : #{@arr_rnd}"
print ' Result '
minima = []
@arr_rnd.each_index do|i|
  if i != 0 && i != @arr.length - 1
  minima <<(@arr_rnd[i]) if @arr_rnd[i - 1] > @arr_rnd[i] && @arr_rnd[i] < @arr_rnd[i + 1]
    end
  end
p minima.min
p '------------------------------------------------'

p 'Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наиболее близок к данному числу.'
arr_r = Array.new(10) { rand(-10.2..10.2) }
p "Array : #{arr_r}"
p "R : #{r = 2.3}"
for i in 1..arr_r.size-1
      x = (arr_r[1]-r).abs
      n = 1
    for i in 2..arr_r.size-1
      if x > (arr_r[i]-r).abs
      x = (arr_r[i]-r).abs
      n = i
      end
    end
  end
p "Result - #{arr_r[n]} "
p '------------------------------------------------'

p 'Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наименее близок к данному числу.'
arr_r = Array.new(10) { rand(-10.2..10.2) }
p "Array : #{arr_r}"
p "R : #{r = 2.3}"
for i in 1..arr_r.size-1
      x = (arr_r[1]-r).abs
      n = 1
    for i in 2..arr_r.size-1
      if x < (arr_r[i]-r).abs
      x = (arr_r[i]-r).abs
      n = i
      end
    end
  end
p "Result - #{arr_r[n]} "
p '------------------------------------------------'

p 'Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.'
p "Array : #{@arr_rnd}"
t = []
t << @arr_rnd.map{|el| el > 0 ? [@arr_rnd.first, el] : el}
p "Result #{t.flatten}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент.'
p "Array : #{@arr_rnd}"
t = []
t << @arr_rnd.map{|el| el < 0 ? [@arr_rnd.first, el] : el}
p "Result #{t.flatten}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элемента нулевой элемент.'
p "Array : #{@arr_rnd}"
t = []
t << @arr_rnd.map{|el| el> 0 ? [el ,@arr_rnd.first] : el}
p "Result #{t.flatten}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Преобразовать его, вставив после каждого отрицательного элемента нулевой элемент.'
p "Array : #{@arr_rnd}"
t = []
t << @arr_rnd.map{|el| el< 0 ? [el ,@arr_rnd.first] : el}
p "Result #{t.flatten}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Упорядочить его по возрастанию.'
p "Array : #{@arr_rnd}"
p "Result #{@arr_rnd.sort}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Упорядочить его по убыванию.'
p "Array : #{@arr_rnd}"
p "Result #{@arr_rnd.sort {|f,l| l <=> f}}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность.'
p "Array : #{@arr_rnd}"
p ' Result '
p " index : #{(0...@arr_rnd.size).sort_by{ |i| @arr_rnd[i] }.reverse}"
p " value : #{ @arr_rnd.sort {|f,l| l <=> f}}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность.'
p "Array : #{@arr_rnd}"
p ' Result '
p " index #{(0...@arr_rnd.size).sort_by{ |i| @arr_rnd[i] }}"
p " value #{ @arr_rnd.sort {|f,l| f <=> l}}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти индекс минимального элемента.'
p "Array : #{@arr_rnd}"
p "Result #{@arr_rnd.index(@arr_rnd.min)} "
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти индекс максимального элемента.'
p "Array : #{@arr_rnd}"
p "Result #{@arr_rnd.index(@arr_rnd.max)} "
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти индекс первого минимального элемента.'
p "Array : #{@arr_rnd}"
p "Result #{@arr_rnd.index(@arr_rnd.min)} "
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти индекс первого максимального элемента.'
p "Array : #{@arr_rnd}"
p "Result #{@arr_rnd.index(@arr_rnd.max)} "
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти индекс последнего минимального элемента.'
p "Array : #{@arr_rnd}"
p "Result #{@arr_rnd.rindex(@arr_rnd.min)} "
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти индекс последнего максимального элемента.'
p "Array : #{@arr_rnd}"
p "Result #{@arr_rnd.rindex(@arr_rnd.max)} "
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти количество минимальных элементов.'
p "Array #{@arr_rnd}"
p "Value   #{@arr_rnd.min}"
p "Result  #{@arr_rnd.count{|el| el == @arr_rnd.min}} "
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти количество максимальных элементов.'
p "Array #{@arr_rnd}"
p "Value   #{@arr_rnd.max}"
p "Result  #{@arr_rnd.count{|el| el == @arr_rnd.max}} "
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти минимальный четный элемент.'
p "Array : #{@arr_rnd}"
p "Result  #{@arr_rnd.select{|el| el.even?}.min}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти минимальный нечетный элемент.'
p "Array : #{@arr_rnd}"
p "Result  #{@arr_rnd.select{|el| el.odd?}.min}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти максимальный четный элемент.'
p "Array : #{@arr_rnd}"
p "Result  #{@arr_rnd.select{|el| el.even?}.max}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти максимальный нечетный элемент.'
p "Array : #{@arr_rnd}"
p "Result  #{@arr_rnd.select{|el| el.odd?}.max}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти минимальный положительный элемент.'
p "Array : #{@arr_rnd}"
p "Result  #{@arr_rnd.select{|el| el.positive?}.min}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти максимальный отрицательный элемент.'
p "Array : #{@arr_rnd}"
p "Result  #{@arr_rnd.select{|el| el.negative?}.max}"
p '------------------------------------------------'

p 'Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.'
p "Array > #{arr = [1,5,3,66,1,99,32,3,10,66,8,99,1]}"
p 'interval 10..100'
p "Result #{arr.each.with_index.find_all{ |a,i| a>10 && a <100 }.map{ |a,b| a }.min}"
p '------------------------------------------------'

p 'Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале.'
p "Array > #{arr = [1,5,3,66,1,99,32,3,10,66,8,99,1]}"
p 'interval 10..100'
p "Result #{arr.each.with_index.find_all{ |a,i| a>10 && a <100 }.map{ |a,b| a }.max}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.'
p "Array : #{@arr_rnd}"
min_b = @arr_rnd.each.with_index.find_all{ |a,i| a == @arr_rnd.min }.map{ |a,b| b }
p "Result #{min_b[0]}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.'
p "Array : #{@arr_rnd}"
max_b = @arr_rnd.each.with_index.find_all{ |a,i| a == @arr_rnd.max }.map{ |a,b| b }
p "Result #{max_b[0]}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти количество элементов, расположенных после первого максимального.'
p "Array : #{@arr_rnd}"
max_a = @arr_rnd[(@arr_rnd.index(@arr_rnd.max))...@arr_rnd.length - 1]
p "Result #{max_a.count}"  if @arr_rnd.index(@arr_rnd.min) != @arr_rnd.length - 1
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти количество элементов, расположенных после первого минимального .'
p "Array : #{@arr_rnd}"
max_a = @arr_rnd[(@arr_rnd.index(@arr_rnd.min))...@arr_rnd.length - 1]
p "Result #{max_a.count}"  if @arr_rnd.index(@arr_rnd.min) != @arr_rnd.length - 1
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти индекс первого экстремального (то есть минимального или максимального) элемента.'
ind = []
p "Array > #{arr = [5,3,66,32,1,3,10,66,8,99,1]}"
min = arr[0]
for i in 1..arr.size-1
  if min>=arr[i]
    min=arr[i]
    ind << i
  end
end
p "Result #{ind[1]}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти индекс последнего экстремального (то есть минимального или максимального) элемента.'
p "Array > #{arr = [5,1,3,66,32,2,3,10,66,8,99,1]}"
ind = []
min = arr[0]
for i in 1..arr.size-1
  if min>=arr[i]
    min=arr[i]
    ind << i
  end
end
p "Result #{ind.last}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти количество элементов, между первым и последним минимальным.'
p "Array :#{arr=[-1,3,4,55,2,3,-1,2]}"
p "Result: #{(arr[arr.index(arr.min) + 1..arr.rindex(arr.min) - 1]).size} "
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти количество элементов, между первым и последним максимальным.'
p "Array :#{arr=[-1,3,4,55,2,3,-1,2,4,55,2]}"
p "Result: #{(arr[arr.index(arr.max) + 1..arr.rindex(arr.max) - 1]).size} "
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти два наибольших элемента.'
p "Array :#{arr=[-1,3,4,55,2,3,-1,2,55,33,44]}"
t1 = [] << arr.max
t1 << (arr.select{|el| el < arr.max }).last
p "Result: #{t1} "
p '------------------------------------------------'

p 'Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные.'
p "Array : #{@arr}"
p "Result #{@arr.select{|x| x.even?}+@arr.select{|x| x.odd?}} "
p '------------------------------------------------'

p 'Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные.'
p "Array : #{@arr_rnd}"
p "Result #{@arr.select{|x| x.odd?}+@arr.select{|x| x.even?}}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Удалить все элементы, встречающиеся менее двух раз.'
p "Array : #{@arr_rnd}"
p "Result #{@arr_rnd.each { |val| @arr_rnd.delete(val) if @arr_rnd.count(val) < 2 }}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Удалить все элементы, встречающиеся более двух раз.'
p "Array : #{@arr_rnd}"
p "Result #{@arr_rnd.each { |val| @arr_rnd.delete(val) if @arr_rnd.count(val) > 2 }}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Удалить все элементы, встречающиеся ровно два раза.'
p "Array : #{@arr_rnd}"
p "Result #{@arr_rnd.each { |val| @arr_rnd.delete(val) if @arr_rnd.count(val) == 2 }}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Удалить все элементы, встречающиеся ровно три раза.'
p "Array : #{@arr_rnd}"
p "Result #{@arr_rnd.each { |val| @arr_rnd.delete(val) if @arr_rnd.count(val) == 3 }}"
p '------------------------------------------------'

p 'Дан целочисленный массив. Найти количество элементов, между первым и последним максимальным.'
p "Array : #{@arr_rnd}"
p ' Result '
p '------------------------------------------------'
