class Place < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '浜大津' },
    { id: 3, name: '唐崎' },
    { id: 4, name: '堅田' }
  ]
end
