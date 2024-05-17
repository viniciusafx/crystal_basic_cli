require "option_parser"

say_hi_to = ""

OptionParser.parse do |parser|
  parser.banner = "Bem vindo ao Meu App!"
  
  parser.on "-v", "--version", "Mostra a versão" do
    puts "version 1.0"
    exit
  end

  parser.on "-h", "--help", "Mostra este menu de ajuda" do
    puts parser
    exit
  end

  parser.on "-H NAME", "--hello=NAME", "Diz olá para alguém" do |name|
    say_hi_to = name
  end

  parser.missing_option do |option_flag|
    STDERR.puts "Erro: #{option_flag} está faltando algo."
    STDERR.puts ""
    STDERR.puts parser
    exit(1)
  end

  parser.invalid_option do |option_flag|
    STDERR.puts "Erro: #{option_flag} não é uma opção válida."
    STDERR.puts parser
    exit(1)
  end
end

unless say_hi_to.empty?
  puts ""
  puts "Olá, #{say_hi_to}!"
end
