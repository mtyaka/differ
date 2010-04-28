module Differ
  module Format
    module HTML
      class << self
        def no_change(unchanged)
          unchanged
        end

        def insert(inserted)
          %Q{<ins class="differ">#{inserted}</ins>}
        end

        def delete(deleted)
          %Q{<del class="differ">#{deleted}</del>}
        end

        def change(deleted, inserted)
          delete(deleted) << insert(inserted)
        end
      end
    end
  end
end