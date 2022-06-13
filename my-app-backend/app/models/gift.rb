class Gift < ActiveRecord::Base
    belongs_to :relative

    def relative_name=(relative_name)
       self.relative = Relative.find_or_create_by(name: relative_name)
    end

    def relative_name
       relative.try(:name)
    end
end