
class Pet

  def initialize(name, type, owner)
    @name = name      # ім'я
    @type = type      # клас тваринки
    @owner = owner    # власник тваринки
    @hunger = 10      # рівень голоду
    @happy = 10       # рівень щастя
    @asleep = false   # стан тваринки спить, не спить
    @cleanliness = 0 # рівень бажання сходити до туалету
    @live = 2
    help
    pet_comand
    start
  end

  def status
    p "Статус #{@type}  #{@name}"
    p "Ситність    : #{@hunger}"
    p "Щастя       : #{@happy}"
    p "Туалет      : #{@cleanliness}"
    p "К-ть життів : #{@live}"
  end

  def walk
    time_pass
    rnd = rand(3)
    p "** #{@name} пішов гуляти на вулицю ..."
    case rnd
    when 0
      p ' - З тобою гуляти саме заловолення!'
    when 1
      p ' - Як сьогодні гарно на вулиці :)'
    when 2
      p ' - А вчора ми гуляли довше!'
    else
      p ' - Я не буду з тобою більше гуляти!'
    end
  end

  def feed
    @hunger += 2
    @cleanliness += 2
    p "** #{@name} ммм, дуже смачно"
    toilet
  end
  def asleep_f
    @asleep = false
    rnd = rand(3)
    case rnd
    when 0
      p "** #{@name} невпинно дивиться на вас" if @live != 0
    when 1
      p "** #{@name} підійшов по ближче і дивиться вам в очі" if @live != 0
    when 2
      p "** #{@name} почина відкривати очі після короткого сну" if @live != 0
    end
  end
  def time_pass

    if @hunger >= 0
    @hunger -= 1
    @happy -= 1
    @cleanliness +=1
    else
      asleep_f if @asleep
      @live -=1
      p "** #{@name} втратив одне життя" if @live == 1
      p "** #{@name} втратив останнє життя" if @live == 0
      p "** #{@name} треба нагально покормити, бо помре" if @live != 0
    end
    if @cleanliness >= 10
      @cleanliness = 0
      p "** #{@name} раптово сходив в туалет на любиму ковдру, треба частіше вигулювати"
    end
    asleep_f if hungry?
    rnd = rand(3)
    case rnd
    when 0
      p "** #{@name} я хочу їсти" if @hunger > 0
    when 1
      p "** #{@name} пюрешечки да с котлеткой би ...." if @hunger > 0
    when 2
      p "** #{@name} накорми мене ..." if @hunger > 0
    else
      p ' - Я не буду з тобою більше гуляти!'
    end
    die
    angry
  end

  def timeToSleep
    p "** #{@name} солодко засипа у вас на руках ..."
    @asleep = true
    2.times do
      time_pass if @asleep
      p "#{@name} - солоденько спить .... хррр хррр... хрр.... ." if @asleep
      p "#{@name} - ... хррр хррр... хрр....хфьююю ." if @asleep
      p "#{@name} - зіває і далі спить ... хррр хррр... хрр....хфьююю ." if @asleep
    end
    if @asleep
      @asleep = false
      p "** #{@name} повільно відкрива оч відкрива очі ."
    end
  end
  def angry
    rnd_h = rand(3)
    rnd = rand(3)
    case rnd
    when 0
      p "** #{@name} розізлився на вас" if @happy <5 && rnd == rnd_h
    when 1
      p "** #{@name} вкусив вас " if @happy <3 && rnd == rnd_h
    when 2
      p "** #{@name} спробував на вас напасти" if @happy <2 && rnd == rnd_h
    else
      p ' - Я не буду з тобою більше гуляти!'
    end
    end


  def hungry?
    @hunger < 5 ? true : false
  end

  def happy?
    @happy < 5 ? true : false
  end

  def play
    time_pass
    if happy?
      rnd = rand(3)
      case rnd
      when 0
        p "** #{@name} грається з м'ячиком"
      when 1
        p "** #{@name} став пілотом справжнього літака"
      when 2
        p "** #{@name} покоряє вершину гори на подвір'ї"
      else
        p ' - Я не буду з тобою більше гуляти!'
      end
      @happy += 2
      @hunger -= 2
    else
      p "** #{@name} я не хочу гратися"
    end
  end

  def poop?
    @cleanliness >= 10
  end

  def toilet
    if poop?
      p "** #{@name} упс, сходив в куточку в туалет"
      @cleanliness = 0
      @hunger -= 2
    else
      p "** #{@name} я скоро захочу в туалет"
    end
  end
  def sport
    time_pass
    @happy += 2
    @hunger -= 2
  end
  def swim
    time_pass
    @happy += 3
    @hunger -= 2
  end
  def pet_comand
    p '------------------------------------------------------------------'
    p '| Комманды:'
    p '| 0 Вийти з гри'
    p '| 1 Привітатись'
    p '| 2 бавитись(+2 щастя -2 бажання поїсти)'
    p '| 3 їсти (+2 ситності +2 туалет)'
    p '| 4 займатись різними видами спорту(+2 щастя -2 ситності)'
    p '| 5 прогулюватись(+2 щастя -2 ситності)'
    p '| 6 плавати(+3 щастя -2 ситності)'
    p '| 7 нічого не робити (Проспати цілий день-3 щастя -3 ситності)'
    p '| 8 вивести в туалет (0 туалет -2 ситності)'
    p '| 9 поспати '
    p '| 10 Стан тваринки '
    p '| 11 Вбити тваринку'
    p '| 12 Список команд'
    p '| Введіть номер команди (тільки цифру)'
  end
  def help
    p '| ----------------------------------------------------------------'
    p '| Щоб почати грати напишіть номер команди яку ви хочете виконати'
    p '| Ваша тваринка, хотіти'
    p '| Спочатку у вашої тваринки: '
    p '| 10 ситності'
    p '| 10 щастя'

  end

  def new_pet
    p " - Вітаю мій господарю, мене звати #{@name}, хочу нагадати що я видатна тваринка із сімейства #{@type}"
  end

  def start
    command = ''
    until command == '0'
      if @hunger <= 0
        die
      end

      command = gets.chomp.downcase
      case command
      when '1'
        new_pet
      when '2'
        play
      when '3'
        feed
      when '4'
        sport
      when '5'
        walk
      when '6'
        swim
      when '7'
        time_pass
      when '8'
        toilet
      when '9'
        timeToSleep
      when '10'
        status
      when '11'
        die
      when '12'
        pet_comand
      when '0'
        exit
      else
        p "Вибачте, але цієї команди не існує: #{command}, напишіть 12 щоб дізнатись список команд"
      end
    end
  end

  def die
    if @live ==0
      p "『RɨP』〘#{@name}♔〙"
      p "✝✝✝ #{@name} помер, його смерть на вашій совісті ✝✝✝"
      exit
    end
  end

  private :die, :walk, :happy?, :poop?, :toilet, :status, :hungry?, :poop?, :status, :timeToSleep, :time_pass, :feed, :play, :asleep_f, :sport, :swim, :new_pet, :start, :help, :pet_comand
end


dragon = Pet.new('Nickson', 'Dog', 'Oleksii')
