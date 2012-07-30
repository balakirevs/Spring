# == Schema Information
#
# Table name: users
#
#  id            :integer         not null, primary key
#  surname       :string(255)
#  name          :string(255)
#  middle_name   :string(255)
#  date_of_birth :string(255)
#  city          :string(255)
#  phone         :string(255)
#  email         :string(255)
#  gender        :string(255)
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
