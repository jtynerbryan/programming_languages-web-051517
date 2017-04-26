def reformat_languages(languages)
  new_hash = {}
  languages.each do |type, value|
    languages[type].each do |language, value|
      new_hash[language] = languages[type][language]
      if language == :javascript
        new_hash[language][:style] = languages.keys
      else
        new_hash[language][:style] = [type]
      end
    end
  end
  new_hash
end
