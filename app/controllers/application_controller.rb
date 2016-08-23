class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :validate_token

  def voice_body
    xml = Twilio::TwiML::Response.new do |r|
      r.say 'Olá, insira o código a seguir na tela de assinatura. O código de 6 letras é:', voice: 'woman', language: 'pt-BR'

      2.times.each do |n|
        params[:token].upcase.each_char do |letter|
          r.say phrase[letter], voice: 'woman', language: 'pt-BR'
        end

        r.pause

        break if n == 1

        r.say 'Repetindo', voice: 'woman', language: 'pt-BR'
      end
    end.text

    render xml: xml
  end

  private

  def validate_token
    params[:token].upcase.each_char do |letter|
      raise 'Token inválido' if phrase[letter].nil?
    end
  rescue StandardError => e
    render text: e.message
  end

  def phrase
    {
      "B" => "B de Bola",
      "C" => "C de Casa",
      "D" => "D de Dado",
      "F" => "F de Faca",
      "G" => "G de Gato",
      "H" => "H de Hotel",
      "J" => "J de Jacaré",
      "K" => "K de Karaokê",
      "L" => "L de Laranja",
      "M" => "M de Maria",
      "N" => "Êênii de Navio",
      "P" => "P de Panela",
      "Q" => "Q de Queijo",
      "R" => "Éérri de Rato",
      "S" => "S de Sapo",
      "T" => "Têê de Tatu",
      "V" => "Vêêê de Vassoura",
      "W" => "W de Wilson",
      "X" => "X de Xadrez",
      "Z" => "Z de Zebra"
    }
  end
end
