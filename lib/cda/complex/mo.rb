class Cda::MO < Cda::QTY
  attribute :currency, Cda::Cs, annotations: {:kind=>:attribute, :class=>"Cda::Cs"}
  attribute :value, Cda::Real, annotations: {:kind=>:attribute, :class=>"Cda::Real"}
end
