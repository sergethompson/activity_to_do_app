require "spec_helper"

describe ExampleMailer do
  describe "example_message" do
    let(:mail) { ExampleMailer.example_message }

    it "renders the headers" do
      mail.subject.should eq("Example message")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
