require "rspec"
require "lru_cache"

describe LRUCache do

    describe "#initialize" do
        it "tests to see if a cache is created" do
            johnny_cache = LRUCache.new(4)
            expect(johnny_cache.cache).to eq ([])
            expect(johnny_cache.max).to eq (4)
        end
    end

    describe "#count" do
        
end