class Wind < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '無風' },
    { id: 4, name: 'そよ風' },
    { id: 5, name: 'やや強い風' },
    { id: 6, name: '釣りに影響が出るほどの強風' },
  ]
end

