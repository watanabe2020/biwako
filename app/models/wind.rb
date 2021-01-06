class Wind < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '無風' },
    { id: 4, name: 'そよ風' },
    { id: 5, name: 'やや強い風' },
    { id: 6, name: '釣りに影響が出るほどの強風' },
    { id: 7, name: '1m/s以下' },
    { id: 8, name: '1m/s' },
    { id: 9, name: '2m/s' },
    { id: 10, name: '3m/s' },
    { id: 11, name: '4m/s' },
    { id: 12, name: '5m/s' },
    { id: 13, name: '6m/s' },
    { id: 14, name: '7m/s' },
    { id: 15, name: '8m/s' },
  ]
end
