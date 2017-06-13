for num in 1..100 do
Image.create!(en_title:  "Shinjuku Station East Exit",
             ja_title: "新宿駅東口",
             en_content:              "FirstKitchen・Macdnald",
             ja_content: "ファーストキッチン・マクドナルド",
             location: "地下一階")
Movie.create!(en_title:  "Shinjuku Station East Exit",
             ja_title: "中央線改札口-新宿駅東口",
             en_content:              "FirstKitchen・Macdnald",
             ja_content: "ファーストキッチン・マクドナルド",
             present: "中央線改札口",
             destination: "新宿駅東口")
end