class Contact < ApplicationRecord

  #Esse trecho de codigo descreve a relacao com o tipo de contato onde uma pessoa pertence ao um tipo 
  belongs_to :kind
  #--------------------------------------------------------------------------------------------------


  #Esse trecho de codigo descreve a relação de um obejto endereço com o contato fazendo assim possivel as consultas atraves do active record
  has_one :address
  #----------------------------------------------------------------------------------------------------------------------------------
    
    
    #Esse trecho de código permite o objeto contato receber parametros que pertencem a outros objetos mas que fazem reference ao mesmo 
    accepts_nested_attributes_for :address
    accepts_nested_attributes_for :kind
    #----------------------------------------------------------------------------------------------------------------------------------
end
