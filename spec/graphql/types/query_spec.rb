require "rails_helper"

RSpec.describe Types::QueryType do
  describe "users" do
    let!(:users) { create_pair(:user) }

    let(:query) do
      %(query {
        users {
          name
        }
        })
    end

    subject(:result) do
      TrexBackendSchema.execute(query).as_json
    end

    it "returns all items" do
      expect(result.dig("data", "users")).to match_array(
        users.map { |user| { "name" => user.name } }
      )
    end
  end

  describe "trips" do
  let!(:trips) { create_pair(:trip) }

    let(:query) do
      %(query {
        trips {
          name
        }
        })
    end

    subject(:result) do
      TrexBackendSchema.execute(query).as_json
    end

    it "returns all trips" do
      expect(result.dig("data", "trips")).to match_array(
        trips.map { |trip| { "name" => trip.name } }
      )
    end
  end

  describe "Single Trip" do
    let!(:trip) { create(:trip) }

      let(:query) do
        %(query {
          trip(id: "#{trip.id}") {
            name
          }
          })
      end

      subject(:result) do
        TrexBackendSchema.execute(query).as_json
      end

      it "returns all trips" do
        expect(result.dig("data", "trip")).to include("name" => trip.name)
      end
    end

  describe "legs" do
    let!(:legs) { create_pair(:leg) }

      let(:query) do
        %(query {
          legs {
            name
          }
          })
      end

    subject(:result) do
      TrexBackendSchema.execute(query).as_json
    end

    it "returns all legs" do
      expect(result.dig("data", "legs")).to match_array(
        legs.map { |leg| { "name" => leg.name } }
      )
    end
  end
  describe "leg" do
    let!(:leg) { create(:leg) }

    let(:query) do
      %(query {
        leg(id: #{leg.id}) {
        name
      }
      })
    end

    subject(:result) do
      TrexBackendSchema.execute(query).as_json
    end

    it "returns all single" do
      expect(result.dig("data", "leg")).to include({ "name" => leg.name })
    end
  end

  describe "destinations" do
    let!(:destinations) { create_pair(:destination) }

    let(:query) do
      %(query {
        destinations {
          name
        }
        })
    end

    subject(:result) do
      TrexBackendSchema.execute(query).as_json
    end

    it "returns all destinations" do
      expect(result.dig("data", "destinations")).to match_array(
        destinations.map { |destination| { "name" => destination.name } }
      )
    end
  end

  describe "Single destination" do
    let!(:destination) { create(:destination) }

    let(:query) do
      %(query {
        destination(id: #{destination.id}) {
        name
      }
      })
    end

  subject(:result) do
    TrexBackendSchema.execute(query).as_json
  end

  it "returns all destination" do
    expect(result.dig("data", "destination")).to include({ "name" => destination.name } )
  end
end

  describe "Single user" do
    let!(:user) { create(:user) }

    let(:query) do
      %(query {
        user(id: #{user.id}) {
        name
      }
      })
    end

    subject(:result) do
      TrexBackendSchema.execute(query).as_json
    end

    it "returns all destination" do
      expect(result.dig("data", "user")).to include({ "name" => user.name } )
    end
  end
end
