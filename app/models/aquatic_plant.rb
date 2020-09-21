class AquaticPlant < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'なし' },
    { id: 3, name: '少し' },
    { id: 4, name: '多いい' },
    { id: 5, name: '水面まで出るくらい多いい' }
  ]
end
