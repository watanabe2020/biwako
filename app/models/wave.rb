class Wave < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '鏡のような水面' },
    { id: 3, name: 'さざなみ' },
    { id: 4, name: 'あれ気味' },
    { id: 5, name: '激あれ※ボート転覆注意' }
  ]
end
