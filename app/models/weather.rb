class Weather < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '雲ひとつない快晴' },
    { id: 3, name: '晴れ' },
    { id: 4, name: '曇り' },
    { id: 5, name: '釣りができるぐらいの雨' },
    { id: 6, name: '雨' },
    { id: 7, name: '雷' }
  ]
end
