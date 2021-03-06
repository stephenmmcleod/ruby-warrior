class Player
  def play_turn(warrior)
    if warrior.feel.enemy?
      warrior.attack!
    else
      if warrior.health < 20 && (@health != nil && warrior.health >= @health)
        warrior.rest!
      else
        if warrior.feel.captive?
          warrior.rescue!
        else
          warrior.walk!
        end
      end
    end    
    @health = warrior.health
  end
end