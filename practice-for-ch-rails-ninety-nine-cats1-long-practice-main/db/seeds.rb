# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ApplicationRecord.transaction do 

    Cat.destroy_all
    ApplicationRecord.connection.reset_pk_sequence!(:cats)

    cat1 = Cat.create!(birth_date: '2020-10-13', color: 'black', name: 'Peter', sex: 'M')
    cat2 = Cat.create!(birth_date: '2020-10-14', color: 'white', name: 'Steven', sex: 'M')
    cat3 = Cat.create!(birth_date: '2019-09-28', color: 'orange', name: 'Georgie', sex: 'F')


end
