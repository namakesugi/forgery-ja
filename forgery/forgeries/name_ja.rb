# encoding: utf-8
class Forgery::NameJa < Forgery::Name
  KANJI = 0
  HIRA = 1
  KANA = 2
  H_KANA = 3
  ROMA = 4

  def self.last_name(ret_type=KANJI)
    parse(dictionaries[:last_names_ja].random, ret_type)
  end

  def self.first_name(ret_type=KANJI)
    parse([dictionaries[:male_first_names_ja], dictionaries[:female_first_names_ja]].random.random, ret_type)
  end

  def self.full_name(ret_type=KANJI)
    "#{self.last_name(ret_type)} #{self.first_name(ret_type)}"
  end

  def self.male_first_name(ret_type=KANJI)
    parse(dictionaries[:male_first_names_ja].random, ret_type)
  end

  def self.female_first_name(ret_type=KANJI)
    parse(dictionaries[:female_first_names_ja].random, ret_type)
  end

  def self.company_name(ret_type=KANJI)
    parse(dictionaries[:company_names_ja].random, ret_type)
  end

  def self.job_title(ret_type=KANJI)
    parse(ddictionaries[:job_titles_ja].random, ret_type)
  end

  def self.title
    dictionaries[:name_titles_ja].random
  end

  private
  def self.parse(str, ret_type)
    str.split(' ')[ret_type]
  end
end
