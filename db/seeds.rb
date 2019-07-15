# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create(email: 'yayoiken@test', password: 'yayoiken')
['J-POP','サントラ','クラシック','洋楽','ポップ','アニメ','ロック'].each do |genre|
    Genre.create!(
        { genre_name: genre}
    )
end