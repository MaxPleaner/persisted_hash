require 'colored'
require 'pry'
require 'active_support/all'
require 'thor'
require 'gemmy'

module PersistedHash

  using Gemmy.patch("hash/i/persisted")

  def self.persisted_hash(hash, *args)
    hash.persisted *args
  end

  def persisted(*args)
    PersistedHash.persisted_hash self, *args
  end

  refine Hash do
    include PersistedHash
  end

end
