class LyricsImporter
  require 'rapgenius'

  Song.all.each do |song|

    title = song.name

    top_match = RapGenius.search(title).first

    lyrics = ""

    top_match.lines.each do |line|
      no_new_chars = line.lyric.gsub('\n', '')
      lyric_with_spaces = (" " + no_new_chars + " ")
      lyrics << lyric_with_spaces
    end

    song.lyrics = lyrics
    song.save

  end

end