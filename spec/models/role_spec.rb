require 'spec_helper'

describe User do

  before { @role = Role.new(name: "Admin")}

  subject { @role }

  it { should respond_to(:name) }

end