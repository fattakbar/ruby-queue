require_relative 'queue.rb'

q = MyQueue.new(3)

while true do
    puts '#'*30
    puts '1. Daftar Antrian'
    puts '2. Panggil Antrian Selanjutnya'
    puts '3. Lihat Antrian'
    puts '#'*30

    input = gets.chomp.to_i

    case input
    when 1
        begin
            print 'Nama Pasien : '
            name = gets.chomp
            q.enqueue(name)
        rescue MyQueue::QueueFull
            puts 'Antrian Penuh'
        end
    when 2
        begin
            name = q.dequeue
            puts "Pasien Dengan Nama #{name} Harap Menuju Ke Meja Teller"
        rescue MyQueue::QueueEmpty
            puts 'Antrian Kosong'
        end
    when 3
        puts 'Daftar Antrian :'
        queue = q.queue
        queue.each do |p|
            puts p
        end
    else
        puts 'Menu Yang Anda Pilih Tidak Tersedia'
    end
end