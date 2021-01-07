module ApplicationHelper
  def default_meta_tags
    {
      site: 'SAISIN',
      title: 'SAISIN 琵琶湖の最新情報！バスフィッシングの環境を知るサイト',
      reverse: true,
      charset: 'utf-8',
      description: '釣れた結果を知るのではなく、釣れる環境をみんなで共有するwebサイト。詳細な環境を投稿でき、共有るようなアプリケーションです。',
      keywords: '滋賀県,琵琶湖,釣り場,釣果情報,最新,琵琶湖ポイント,ポイント,SAISIN',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('aicon2.png') },
        { href: image_url('aicon2.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: 'SAISIN', # もしくは site_name: :site
        title: 'SAISIN 琵琶湖の最新情報！バスフィッシングの環境を知るサイト', # もしくは title: :title
        description: '釣れた結果ではなく、釣れる環境をみんなで共有するwebサイト!!。', # もしくは description: :description
        type: 'website',
        url: request.original_url,
        image: image_url('urasiro.png'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary',
        site: '@tenkuucir',
      }
    }
  end
end
