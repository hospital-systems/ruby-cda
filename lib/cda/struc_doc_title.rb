class Cda::StrucDocTitle < Cda::Base
  attribute :id, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :language, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :style_code, Array[String], annotations: {:kind=>:attribute, :class=>"Array[String]"}
  attribute :media_type, String, annotations: {:kind=>:attribute, :class=>"String"}
  attribute :_text, String, annotations: {:class=>"String"}
end
