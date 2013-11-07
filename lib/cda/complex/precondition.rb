class Cda::Precondition
  include Virtus.model
  attribute :criterion, Cda::Criterion, annotations: {:class=>"Cda::Criterion"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :type_code, Cda::ActRelationshipType, annotations: {:kind=>:attribute, :class=>"Cda::ActRelationshipType"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
end
