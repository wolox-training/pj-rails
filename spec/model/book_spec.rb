require 'rails_helper'

describe Book, type: :model do
  it { should validate_presence_of(:genre) }

  it { should validate_presence_of(:author) }

  it { should validate_presence_of(:image) }

  it { should validate_presence_of(:title) }

  it { should validate_presence_of(:publisher) }

  it { should validate_presence_of(:year) }

  subject(:book) do
    create(:book)
  end

  it do
    is_expected.to be_valid
  end

  describe '#create' do
    context 'When the genre is nil' do
      subject(:book) { FactoryBot.build(:book, genre: nil) }

      it do
        is_expected.to be_invalid
      end
    end

    context 'When the author is nil' do
      subject(:book) { FactoryBot.build(:book, author: nil) }

      it do
        is_expected.to be_invalid
      end
    end

    context 'When the image is nil' do
      subject(:book) { FactoryBot.build(:book, image:nil) }

      it do
        is_expected.to be_invalid
      end
    end

    context 'When the title is nil' do
      subject(:book) { FactoryBot.build(:book, title:nil) }

      it do
        is_expected.to be_invalid
      end
    end

    context 'When the publisher is nil' do
      subject(:book) { FactoryBot.build(:book, publisher:nil) }

      it do
        is_expected.to be_invalid
      end
    end

    context 'When the year is nil' do
      subject(:book) { FactoryBot.build(:book, year:nil) }

      it do
        is_expected.to be_invalid
      end
    end
  end
end
