class Cda::CustodianOrganization < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :name, Cda::ON, annotations: {:class=>"Cda::ON"}
  attribute :telecom, Cda::TEL, annotations: {:class=>"Cda::TEL"}
  attribute :addr, Cda::AD, annotations: {:class=>"Cda::AD"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :class_code, Cda::EntityClassOrganization, annotations: {:kind=>:attribute, :class=>"Cda::EntityClassOrganization"}
  attribute :determiner_code, Cda::EntityDeterminer, annotations: {:kind=>:attribute, :class=>"Cda::EntityDeterminer"}
end