class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Qualification' },
    { id: 3, name: 'Discovery' },
    { id: 4, name: 'Proposal' },
    { id: 5, name: 'Negotiation' },
    { id: 6, name: 'Closed' },
  ]
  end
