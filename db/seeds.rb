# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

company = Company.create(name: 'Терминальные системы', active: true)
company.products.create(name: 'Купюроприемник', description: 'Купюроприемник Creator C100 является сертифицированным устройством ЦБ России устройством для приема наличных денег в устройствах самообслуживания.', active: true)
company.products.create(name: 'Модем', description: 'Трехдиапазонный (900/1800/2100 МГц) GSM-модем iRZ TU31 предназначен для передачи данных по сетям сотовой связи 2G и 3G.', active: true)

company = Company.create(name: 'Киоск-сервис', active: true)
company.products.create(name: 'Клавиатура', description: 'Применение Pinpad SZZT ZT596F: Банкоматы, терминалы самообслуживания, информационные киоски, платежные терминалы', active: true)
company.products.create(name: 'Термопринтер', description: 'Компактный киоск принтер Nippon NP-F209 от японского производителя Nippon Primex. Киоск принтер находится в бюджетном сегменте, поэтому одним из преимуществ модели NP-F209 является низкая цена.', active: true)
