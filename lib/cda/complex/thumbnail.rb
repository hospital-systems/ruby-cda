class Cda::Thumbnail < Cda::ED
  attribute :reference, Cda::TEL, annotations: {:class=>"Cda::TEL"}
  attribute :thumbnail, Cda::Thumbnail, annotations: {:class=>"Cda::Thumbnail"}
end
