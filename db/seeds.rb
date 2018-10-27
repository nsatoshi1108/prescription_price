require "csv"
#csvファイルを扱うためのgemを読み込む


#foreachは、ファイル（hoge.csv）の各行を引数として、ブロック(do~endまでを範囲とする『引数のかたまり』)を繰り返し実行する
#rowには、読み込まれた行が代入される
CSV.foreach('db/pharmacy_tokyo.csv') do |row|

  pharmacy = Pharmacy.create(pharmacy_code: row[0],name: row[1],postal: row[2],address: row[4],tel: row[5])

  if row[3].present?
    if row[3].match(/調基１/)
      pharmacy.pharmacy_additions.create(addition_id: 1)
    elsif row[3].match(/調基２/)
      pharmacy.pharmacy_additions.create(addition_id: 2)
    elsif row[3].match(/調基３イ/)
      pharmacy.pharmacy_additions.create(addition_id: 3)
    elsif row[3].match(/調基３ロ/)
      pharmacy.pharmacy_additions.create(addition_id: 4)
    elsif row[3].match(/調基特１/)
      pharmacy.pharmacy_additions.create(addition_id: 5)
    end

    if row[3].match(/地支体/)
      pharmacy.pharmacy_additions.create(addition_id: 6)
    end

    if row[3].match(/後発調１/)
      pharmacy.pharmacy_additions.create(addition_id: 7)
    elsif row[3].match(/後発調２/)
      pharmacy.pharmacy_additions.create(addition_id: 8)
    elsif row[3].match(/後発調３/)
      pharmacy.pharmacy_additions.create(addition_id: 9)
    end
  end
end


CSV.foreach('db/internal_H30_8_29.csv') do |row|

  Medicine.create(original_price: row[12],generic_price: row[13],classification: row[5],usage: row[0], code: row[1].to_i, name: row[7], standard: row[3])

end
