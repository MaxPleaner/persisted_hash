This was originally written in [gemmy](http://github.com/maxpleaner/gemmy) but was extracted to a gem.

It's on rubygems. To install `gem install persisted_hash` and `require 'persisted_hash'` as expected.

There are three potential ways to create a 'persisted hash':

1. via a global patch on hash
2. via a scoped refinement on hash
3. functionally, via class method

Globally:

```rb
Hash.include PersistedHash
hash = {}.persisted("path.yaml")
```

Refinements:

```rb
class MyClass
  using PersistedHash
  hash = {}.persisted("path.yaml")
end
```

Functionally:

```rb
hash = PersistedHash.new({})
```
The API to interact with the persisted hash is as follows:

- `get(*keys)` reads
- `set(*keys)` writes
- `data` get all
- `set_state(hash)` overwrite
- `clear` empty

The persisted object inherits from hash, so methods like `[]` can still be called.
They'll just work on the in-memory version, though. 
