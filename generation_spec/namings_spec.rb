require_relative 'gen_spec_helper'

describe Gen::Namings do
  include described_class
  example do
    normalize_name('Family Name').should == 'family_name'
    normalize_name('Suffix (e.g., JR or III)').should == 'suffix'

    normalize_name('???????', 'ups').should == 'ups'
  end

  example do
    mk_class_name('st').should == 'St'
    mk_class_name('ActMood').should == 'ActMood'
    mk_class_name('ADXP').should == 'ADXP'
    mk_class_name('adxp.additionalLocator').should == 'AdxpAdditionalLocator'
    mk_class_name('POCD_MT000040.Act').should == 'Act'
    mk_class_name('PIVL_TS').should == 'PIVL_TS'
    mk_class_name('StrucDoc.Content').should == 'StrucDocContent'
    mk_class_name('xs:string').should == 'String'
    mk_class_name('xs:NMTOKENS').should == 'Array[String]'
    mk_class_name('POCD_MT000040.InfrastructureRoot.typeId').should == 'InfrastructureRootTypeId'
    mk_class_name('x_ActClassDocumentEntryOrganizer').should == 'XActClassDocumentEntryOrganizer'
  end
end
