require_relative 'queue.rb'

while true do
    puts '#'*30
    puts '1. Daftar Antrian'
    puts '2. Panggil Antrian Selanjutnya'
    puts '3. Lihat Antrian'
    puts '#'*30

    input = gets.chomp.to_i

    case input
    when 1
    when 2
    when 3
    else
        puts 'Menu Yang Anda Pilih Tidak Tersedia'
    end
end