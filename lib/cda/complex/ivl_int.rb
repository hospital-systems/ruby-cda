class Cda::IVL_INT < Cda::SXCM_INT
  include Virtus.model
  attribute :center, Cda::INT
  attribute :high, Cda::IVXB_INT
  attribute :low, Cda::IVXB_INT
  attribute :width, Cda::INT
  attribute :width, Cda::INT
end