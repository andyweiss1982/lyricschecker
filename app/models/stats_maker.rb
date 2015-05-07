class StatsMaker

  def run
    YearObj.all.each do |yr|
      @songs = Song.where(year: yr.num)

      murder_count = 0
      shoot_count = 0
      stab_count = 0 
      kill_count = 0 
      steal_count = 0
      rape_count = 0 
      thug_count = 0 
      trigger_count = 0 
      gang_count = 0 
      gun_count = 0 
      total_count = 0

      @songs.each do |song| 
        murder_count += song.wordchecker[0][-1].to_i
        shoot_count += song.wordchecker[1][-1].to_i
        stab_count += song.wordchecker[2][-1].to_i
        kill_count += song.wordchecker[3][-1].to_i
        steal_count += song.wordchecker[4][-1].to_i
        rape_count += song.wordchecker[5][-1].to_i
        thug_count += song.wordchecker[6][-1].to_i
        trigger_count += song.wordchecker[7][-1].to_i
        gang_count += song.wordchecker[8][-1].to_i
        gun_count += song.wordchecker[9][-1].to_i
        total_count += song.wordchecker[10][-1].to_i
      end

      yr.update(murder: murder_count, shoot: shoot_count, stab: stab_count, kill: kill_count, steal: steal_count, 
        rape: rape_count, thug: thug_count, trigger: trigger_count, gang: gang_count, gun: gun_count, total: total_count)
    end
  end

end