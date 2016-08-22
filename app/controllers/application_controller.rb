class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def voice_body
    xml = '<?xml version="1.0" encoding="UTF-8" ?>
<Response>
  <Say voice="woman" language="pt-BR">Olá, insira o código a seguir na tela de assinatura. O código de 6 letras é:</Say>
<Pause /><Say voice="woman" language="pt-BR">B de Bola</Say>
<Pause /><Say voice="woman" language="pt-BR">C de Casa</Say>
<Pause /><Say voice="woman" language="pt-BR">D de Dado</Say>
<Pause /><Say voice="woman" language="pt-BR">F de Faca</Say>
<Pause /><Say voice="woman" language="pt-BR">G de Gato</Say>
<Pause /><Say voice="woman" language="pt-BR">H de Hotel</Say>
<Pause /><Say voice="woman" language="pt-BR">J de Jacaré</Say>
<Pause /><Say voice="woman" language="pt-BR">K de Karaokê</Say>
<Pause /><Say voice="woman" language="pt-BR">L de Laranja</Say>
<Pause /><Say voice="woman" language="pt-BR">M de Maria</Say>
<Pause /><Say voice="woman" language="pt-BR">Êênii de Navio</Say>
<Pause /><Say voice="woman" language="pt-BR">P de Panela</Say>
<Pause /><Say voice="woman" language="pt-BR">Q de Queijo</Say>
<Pause /><Say voice="woman" language="pt-BR">Éérri de Rato</Say>
<Pause /><Say voice="woman" language="pt-BR">S de Sapo</Say>
<Pause /><Say voice="woman" language="pt-BR">Têê de Tatu</Say>
<Pause /><Say voice="woman" language="pt-BR">Vêêê de Vassoura</Say>
<Pause /><Say voice="woman" language="pt-BR">W de Wilson</Say>
<Pause /><Say voice="woman" language="pt-BR">X de Xadrez</Say>
<Pause /><Say voice="woman" language="pt-BR">Z de Zebra</Say>
  <Pause />
  <Say voice="woman" language="pt-BR">Repetindo</Say>
<Pause /><Say voice="woman" language="pt-BR">B de Bola</Say>
<Pause /><Say voice="woman" language="pt-BR">C de Casa</Say>
<Pause /><Say voice="woman" language="pt-BR">D de Dado</Say>
<Pause /><Say voice="woman" language="pt-BR">F de Faca</Say>
<Pause /><Say voice="woman" language="pt-BR">G de Gato</Say>
<Pause /><Say voice="woman" language="pt-BR">H de Hotel</Say>
<Pause /><Say voice="woman" language="pt-BR">J de Jacaré</Say>
<Pause /><Say voice="woman" language="pt-BR">K de Karaokê</Say>
<Pause /><Say voice="woman" language="pt-BR">L de Laranja</Say>
<Pause /><Say voice="woman" language="pt-BR">M de Maria</Say>
<Pause /><Say voice="woman" language="pt-BR">Êênii de Navio</Say>
<Pause /><Say voice="woman" language="pt-BR">P de Panela</Say>
<Pause /><Say voice="woman" language="pt-BR">Q de Queijo</Say>
<Pause /><Say voice="woman" language="pt-BR">Éérri de Rato</Say>
<Pause /><Say voice="woman" language="pt-BR">S de Sapo</Say>
<Pause /><Say voice="woman" language="pt-BR">Têê de Tatu</Say>
<Pause /><Say voice="woman" language="pt-BR">Vêêê de Vassoura</Say>
<Pause /><Say voice="woman" language="pt-BR">W de Wilson</Say>
<Pause /><Say voice="woman" language="pt-BR">X de Xadrez</Say>
<Pause /><Say voice="woman" language="pt-BR">Z de Zebra</Say>
  <Pause />
  <Say voice="woman" language="pt-BR">Obrigada.</Say>
</Response>'

    render xml: xml
  end
end
