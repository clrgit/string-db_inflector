
describe "String::DbInflector" do
  using String::DbInflector

  it 'has a version number' do
    expect(String::DbInflector::VERSION).not_to be_nil
  end

  describe "#pluralize" do
    it "pluralizes regular words" do
      expect("road".pluralize).to eq "roads"
    end
    it "pluralizes -y words" do
      expect("city".pluralize).to eq "cities"
    end
    it "pluralizes uncountable words" do
      expect("sheep".pluralize).to eq "sheeps"
    end
  end

  describe "#singularize" do
    it "singularizes regular words" do
      expect("roads".singularize).to eq "road"
    end
    it "singularizes -y words" do
      expect("cities".singularize).to eq "city"
    end
    it "singularizes uncountable words" do
      expect("sheeps".singularize).to eq "sheep"
    end
  end
end

