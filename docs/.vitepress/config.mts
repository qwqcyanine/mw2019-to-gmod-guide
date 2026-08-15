import { defineConfig } from 'vitepress'

export default defineConfig({
  lang: 'zh-CN',
  base: '/mw2019-to-gmod-guide/',
  title: 'MW2019 → Gmod 武器导入教程',
  description: '将 COD16 (MW2019) 及后续作品的武器完整导入 Garry\'s Mod 的全流程中文教程',
  cleanUrls: true,
  lastUpdated: true,
  ignoreDeadLinks: [/^\/examples\//, /\/editor\.html/],

  markdown: {
    lineNumbers: true
  },

  themeConfig: {
    logo: '/images/logo.svg',
    siteTitle: 'MW→Gmod 教程',

    nav: [
      { text: '首页', link: '/' },
      { text: '教程', link: '/guide/' },
      { text: '参考', link: '/reference/links' },
      { text: '在线编辑器', link: '/editor.html', target: '_blank' }
    ],

    sidebar: {
      '/guide/': [
        {
          text: '开始',
          items: [
            { text: '教程总览', link: '/guide/' },
            { text: '环境与工具准备', link: '/guide/preparation' }
          ]
        },
        {
          text: '提取阶段',
          items: [
            { text: '① 解包游戏（Cordycep + Saluki）', link: '/guide/unpacking' },
            { text: '② 模型处理（Cast / Blender / SMD）', link: '/guide/models' },
            { text: '③ 贴图处理（GIU + MWBMat）', link: '/guide/textures' },
            { text: '④ 动画处理（Alchemist IK/Additive）', link: '/guide/animations' }
          ]
        },
        {
          text: '编译阶段',
          items: [
            { text: '⑤ QC 文件编写详解', link: '/guide/qc' },
            { text: '⑥ Crowbar 编译模型', link: '/guide/compiling' }
          ]
        },
        {
          text: '导入 Gmod',
          items: [
            { text: '⑦ 打包 Addon 与 MWBase 套皮', link: '/guide/gmod-addon' },
            { text: '常见问题与排错', link: '/guide/troubleshooting' }
          ]
        }
      ],
      '/reference/': [
        {
          text: '参考资料',
          items: [
            { text: '资源与链接汇总', link: '/reference/links' },
            { text: '示例 QC 文件', link: '/reference/qc-examples' },
            { text: 'QC 常用命令速查', link: '/reference/qc-cheatsheet' }
          ]
        }
      ]
    },

    outline: {
      label: '本页目录',
      level: [2, 3]
    },

    search: {
      provider: 'local',
      options: {
        locales: {
          root: {
            translations: {
              button: { buttonText: '搜索文档', buttonAriaLabel: '搜索文档' },
              modal: {
                noResultsText: '无法找到相关结果',
                resetButtonTitle: '清除查询条件',
                footer: { selectText: '选择', navigateText: '切换', closeText: '关闭' }
              }
            }
          }
        }
      }
    },

    docFooter: { prev: '上一页', next: '下一页' },
    lastUpdatedText: '最后更新',
    returnToTopLabel: '回到顶部',
    sidebarMenuLabel: '菜单',
    darkModeSwitchLabel: '主题',

    editLink: {
      pattern: '',
      text: ''
    },

    footer: {
      message: '仅供学习交流使用 · 游戏素材版权归 Activision 所有',
      copyright: 'MW2019 → Gmod Guide'
    }
  }
})
