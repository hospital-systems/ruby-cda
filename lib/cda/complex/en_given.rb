class Cda::EnGiven < Cda::ENXP
  attribute :part_type, Cda::EntityNamePartType, annotations: {:kind=>:attribute, :class=>"Cda::EntityNamePartType"}
end
