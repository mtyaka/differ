module Differ
  module Format
    module Color
      class << self
        def same(unchanged)
          unchanged
        end

        def insert(inserted)
          "\033[32m#{inserted}\033[0m"
        end

        def delete(deleted)
          "\033[31m#{deleted}\033[0m"
        end

        def change(deleted, inserted)
          delete(deleted) << insert(inserted)
        end
      end
    end
  end
end