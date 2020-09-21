class WaterQuality < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'スーパークリア' },
    { id: 3, name: 'クリア' },
    { id: 4, name: '濁り気味' },
    { id: 5, name: '激濁' },
    { id: 6, name: 'コーヒー並' }

  ]
end
