# ApplicationRecord serves as a base class for all models in the application,
# inheriting from ActiveRecord::Base. It's used for shared behavior among models.
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
