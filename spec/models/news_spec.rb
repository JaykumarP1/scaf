require 'spec_helper'

describe News do
  it "has a valid info" do
    News.create(title: "any",url: "url",s_no: "1").should be_valid
  end
end

describe News do
  it "file is not uploading" do
    News.new image: File.new(Rails.root + 'spec/1.png')
end
end

describe News do
  it "update fails" do
    News.update(title: "any",url: "url",s_no: "1")
  end
end

