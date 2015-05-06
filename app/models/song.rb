class Song < ActiveRecord::Base
  belongs_to :billboard_date

  TARGET_WORDS = ["murder", "shoot", "stab", "kill", "steal", "rape", "thug", "trigger", "gang", "gun"]

  def wordchecker
    target_words = []
    TARGET_WORDS.each do |tw|
      target_words << [tw, 0]
    end
    
    total_counter = 0

    no_punctuation = self.lyrics.gsub(/[^a-zA-Z\s]/, "")

    no_punctuation.split.each do |song_word|
      target_words.each do |target_word|
        if song_word.downcase.include?(target_word[0].downcase)
          total_counter +=1
          target_word[-1] +=1
        end
      end
    end
  
    target_words << ["total", total_counter]
    target_words
  end

end
