class Cda::HXIT_PQ < Cda::PQ
  attribute :valid_time, Cda::IVL_TS, annotations: {:class=>"Cda::IVL_TS"}
end
