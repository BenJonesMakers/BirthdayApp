require 'birthday'

describe Birthday do
  describe '#today?' do

    it "responds true if today is same as day and month" do
      t = Time.new
      day = t.day.to_s
      month = t.strftime("%B").downcase
      is_today = Birthday.new(day, month)

      expect(is_today).to be_today
    end

    it "responds false as today is not the same as day and month" do
      t = Time.new
      day = t.day + 1
      month = t.strftime("%B").downcase
      not_today  = Birthday.new(day, month)

      expect(not_today).not_to be_today
    end
  end
end
