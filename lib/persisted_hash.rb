require 'gemmy'

module PersistedHash

  using Gemmy.patch("hash/i/persisted")

  def self.new(hash, *args)
    hash.persisted *args
  end

  def persisted(*args)
    PersistedHash.new self, *args
  end

  refine Hash do
    include PersistedHash
  end

end
