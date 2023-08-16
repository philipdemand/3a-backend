Phase 3 Project Backend

This backend supports a web classifieds app (Goodz) that hosts <b>items</b>, and each item belongs to a <b>category</b>

The category and item models inherit from ActiveRecord.  The category model uses a has_many :items macro and the item model uses a belongs_to :category macro

The controller is setup to handle, get, post(item), post(category) patch, and delete requests

A get request on categories will deliver categories, each having its own nested items.

Frontend repository: https://github.com/philipdemand/phase-3-frontend
