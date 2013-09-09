require 'spec_helper'

describe User do

  before { @role = User.new(name: "Admin")}

  subject { @role }

  it { should respond_to(:name) }

end