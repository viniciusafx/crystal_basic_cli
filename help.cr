require "option_parser"

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
end
