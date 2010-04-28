module Differ
  module Format
    module Ascii
      class << self
        def no_change(unchanged)
          unchanged
        end

        def insert(inserted)
          "{+#{inserted.inspect}}"
        end

        def delete(deleted)
          "{-#{deleted.inspect}}"
        end

        def change(deleted, inserted)
          "{#{deleted.inspect} >> #{inserted.inspect}}"
        end
      end
    end
  end
end