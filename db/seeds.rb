require "csv"
#csvファイルを扱うためのgemを読み込む


#foreachは、ファイル（hoge.csv）の各行を引数として、ブロック(do~endまでを範囲とする『引数のかたまり』)を繰り返し実行する
#rowには、読み込まれた行が代入される
CSV.foreach('db/pharmacy_tokyo_english_address.csv') do |row|

  pharmacy = Pharmacy.create(pharmacy_code: row[0],name: row[1],postal: row[2],address: row[4],tel: row[5])
  addition_score = 0

  if row[3].present?
    if row[3].match(/調基１/)
      pharmacy.pharmacy_additions.create(addition_id: 1)
      addition_score += 41
    elsif row[3].match(/調基２/)
      pharmacy.pharmacy_additions.create(addition_id: 2)
      addition_score += 25
    elsif row[3].match(/調基３イ/)
      pharmacy.pharmacy_additions.create(addition_id: 3)
      addition_score += 20
    elsif row[3].match(/調基３ロ/)
      pharmacy.pharmacy_additions.create(addition_id: 4)
      addition_score += 15
    elsif row[3].match(/調基特１/)
      pharmacy.pharmacy_additions.create(addition_id: 5)
      addition_score += 10
    end

    if row[3].match(/地支体/)
      pharmacy.pharmacy_additions.create(addition_id: 6)
      addition_score += 35
    end

    if row[3].match(/後発調１/)
      pharmacy.pharmacy_additions.create(addition_id: 7)
      addition_score += 18
    elsif row[3].match(/後発調２/)
      pharmacy.pharmacy_additions.create(addition_id: 8)
      addition_score += 22
    elsif row[3].match(/後発調３/)
      pharmacy.pharmacy_additions.create(addition_id: 9)
      addition_score += 26
    end
    pharmacy.update(addition_sum: addition_score)
  end
end
