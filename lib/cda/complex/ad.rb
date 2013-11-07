class Cda::AD < Cda::ANY
  attribute :is_not_ordered, Cda::Bl, annotations: {:kind=>:attribute, :class=>"Cda::Bl"}
  attribute :use, Cda::Set_PostalAddressUse, annotations: {:kind=>:attribute, :class=>"Cda::Set_PostalAddressUse"}
  attribute :useable_period, Array[Cda::SXCM_TS], annotations: {:multiple=>true, :class=>"Cda::SXCM_TS"}
end
