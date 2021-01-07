module ApplicationHelper
  def default_meta_tags
    {
      site: 'SAISIN',
      title: '滋賀県 琵琶湖のブラックバス・ルアーフィッシングの釣りポイントを知るサイト',
      reverse: true,
      charset: 'utf-8',
      description: '釣れた結果を知るのではなく、釣れる環境をみんなで共有するwebサイト。詳細な環境を投稿でき、共有るようなアプリケーションです。',
      keywords: '滋賀県,琵琶湖,釣り,バスフィッシング,ルアー,ルアー釣り,釣り場,案内,釣果情報,通販,釣,釣り具,フィッシング,fishing,レジャー,アウトドア,遊び,趣味,釣果,釣果情報,釣場,ポイント,釣りポイント,キャンプ,水遊び,自由研究,初心,中級,上級,シマノ,ダイワ,浜大津,堅田,唐崎,瀬田川,木浜,琵琶湖大橋,矢橋帰帆島,近江舞子,沖島,奥琵琶湖,彦根,長浜,北湖,南湖,',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('urasiro.png') },
        { href: image_url('urasiro.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: 'SAISIN', # もしくは site_name: :site
        title: '琵琶湖のブラックバスフィッシングの最新情報！環境を知るサイト', # もしくは title: :title
        description: '釣れた結果ではなく、釣れる環境をみんなで共有するwebサイト。', # もしくは description: :description
        type: 'website',
        url: request.original_url,
        image: image_url('urasiro.png'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary',
        site: '天空人@がちキャン△(@tenkuucir)です',
      }
    }
  end
end
