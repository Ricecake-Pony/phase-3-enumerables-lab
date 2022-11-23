class Donation
    def find_organization organization
    self.find_by(organization_name)
    end

# instance method because its for the Donation class. As well as we're grabbing one specific instance of the Donation class not trying to grab/change all of them. 