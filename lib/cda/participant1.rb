class Cda::Participant1 < Cda::Base
  attribute :realm_code, Array[Cda::CS], annotations: {:multiple=>true, :class=>"Cda::CS"}
  attribute :type_id, Cda::InfrastructureRootTypeId, annotations: {:class=>"Cda::InfrastructureRootTypeId"}
  attribute :template_id, Array[Cda::II], annotations: {:multiple=>true, :class=>"Cda::II"}
  attribute :function_code, Cda::CE, annotations: {:class=>"Cda::CE"}
  attribute :time, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
  attribute :associated_entity, Cda::AssociatedEntity, annotations: {:class=>"Cda::AssociatedEntity"}
  attribute :null_flavor, Cda::NullFlavor, annotations: {:kind=>:attribute, :class=>"Cda::NullFlavor"}
  attribute :type_code, Cda::ParticipationType, annotations: {:kind=>:attribute, :class=>"Cda::ParticipationType"}
  attribute :context_control_code, Cda::ContextControl, annotations: {:kind=>:attribute, :class=>"Cda::ContextControl"}
end