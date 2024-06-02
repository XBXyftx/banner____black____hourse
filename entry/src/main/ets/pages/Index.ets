@Entry
@Component
struct Index {
  build() {
    //根组件
    Column() {


      //置顶logo
      Column() {
        //携程口碑榜logo
        Image($rawfile('log.png'))
          .width(200)
          .offset({ y: 70 })

        //推荐榜单
        List() {
          ListItem() {
            Column() {
              Image($rawfile('rank.png'))
                .width('34%')
            }
          }

          ListItem() {
            Column() {
              Image($rawfile('hot.png'))
                .width('34%')
            }
          }

          ListItem() {
            Column() {
              Image($rawfile('scenery.png'))
                .width('34%')
            }
          }

          ListItem() {
            Column() {
              Image($rawfile('ski.png'))
                .width('34%')
            }
          }

        }
        .listDirection(Axis.Horizontal)
        .height(82)
        .position({ y: 160 })
        .scrollBar(BarState.Off)


        //评选规则右侧挂组件
        Column() {
          Text('评选规则')
            .fontSize(10)
            .fontColor('rgba(246, 223, 200, 1)')
            .textAlign(TextAlign.Center)
            .width('100%')
            .height('100%')
        }
        .width(54)
        .height(20)
        .backgroundColor('rgba(255, 224, 208, 0.3)')
        .borderRadius(50)
        .position({ x: '100%', y: 120 })
        .translate({ x: -54 })

      }
      .backgroundImage($rawfile('banner.png'))
      .width('100%')
      .height(310)
      .backgroundImageSize({width:'100%'})


      //城市选择及目的地
      Row() {

        //城市选择组件
        Row({ space: 4.5 }) {
          Text('北京')
            .textAlign(TextAlign.Center)
            .fontColor('rgba(95, 43, 14, 1)')
            .fontSize(16)
            .fontWeight(600)


          Image($rawfile('ic_public_arrow_down_0.svg'))
            .width(12)
            .height(12)
            .fillColor('#fff')
            .backgroundColor('#5F2B0E')
            .borderRadius(8)
        }
        .width(163)
        .height(36)
        .borderRadius(16)
        .linearGradient({
          colors: [['rgba(255, 226, 200, 1)', 0], ['rgba(230, 175, 138, 1)', 1]],
          direction: GradientDirection.Right
        })
        .justifyContent(FlexAlign.Center)


        //目的地选择
        Row() {
          Text('口碑目的地')
            .fontSize(16)
            .fontColor('rgba(153, 83, 46, 1)')
            .fontWeight(500)

        }
        .width(163)
        .height(36)
        .borderRadius(36)
        .justifyContent(FlexAlign.Center)
        .backgroundColor('rgba(248, 213, 184, 0.2)')

      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({ left: 10, right: 10 })
      .margin({ top: 10 })


      //酒店 景点 夜游 美食最外层组件
      Row() {

        //酒店
        Row() {
          Text('酒店')
            .fontColor('rgba(0, 0, 0, 1)')
            .fontSize(16)
            .fontWeight(400)
        }
        .width(78)
        .height(36)
        .backgroundColor('rgba(255, 255, 255, 0.8)')
        .shadow({
          color: 'rgba(47, 27, 14, 0.07)',
          radius: 8,
          offsetX: 1,
          offsetY: 1
        })
        .justifyContent(FlexAlign.Center)
        .alignItems(VerticalAlign.Center)
        .borderRadius(4)


        //景点
        Row() {
          Text('景点')
            .fontColor('rgba(255, 255, 255, 1)')
            .fontSize(16)
            .fontWeight(400)
        }
        .width(78)
        .height(36)
        .linearGradient({
          colors: [['rgba(179, 109, 62, 0.8)', 0], ['rgba(204, 148, 102, 0.8)', 1]],
          direction: GradientDirection.Right
        })
        .shadow({
          color: 'rgba(47, 27, 14, 0.07)',
          radius: 8,
          offsetX: 1,
          offsetY: 1
        })
        .justifyContent(FlexAlign.Center)
        .alignItems(VerticalAlign.Center)
        .borderRadius(4)


        //夜游
        Row() {
          Text('夜游')
            .fontColor('rgba(0, 0, 0, 1)')
            .fontSize(16)
            .fontWeight(400)
        }
        .width(78)
        .height(36)
        .backgroundColor('rgba(255, 255, 255, 0.8)')
        .shadow({
          color: 'rgba(47, 27, 14, 0.07)',
          radius: 8,
          offsetX: 1,
          offsetY: 1
        })
        .justifyContent(FlexAlign.Center)
        .alignItems(VerticalAlign.Center)
        .borderRadius(4)


        //美食
        Row() {
          Text('美食')
            .fontColor('rgba(0, 0, 0, 1)')
            .fontSize(16)
            .fontWeight(400)
        }
        .width(78)
        .height(36)
        .backgroundColor('rgba(255, 255, 255, 0.8)')
        .shadow({
          color: 'rgba(47, 27, 14, 0.07)',
          radius: 8,
          offsetX: 1,
          offsetY: 1
        })
        .justifyContent(FlexAlign.Center)
        .alignItems(VerticalAlign.Center)
        .borderRadius(4)

      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({ top: 24 })
      .padding({ left: 12, right: 12 })


      //近期热门 必打卡 滑雪 亲子 自然风光
      Row({ space: 25 }) {

        //近期热门
        Row() {
          Image($rawfile('ic_hot.svg'))
            .width(17)
            .height(17)
            .fillColor('#CC9466')

          Text('近期热门')
            .fontSize(14)
            .fontColor('rgba(103, 57, 21, 1)')
            .fontWeight(600)

        }
        .width(85)
        .height(18)

        //必打卡
        Text('必打卡')
          .fontColor('rgba(102, 102, 102, 1)')
          .fontSize(14)
          .fontWeight(42)
          .height(18)

        //滑雪
        Text('滑雪')
          .fontColor('rgba(102, 102, 102, 1)')
          .fontSize(14)
          .fontWeight(42)
          .height(18)

        //亲子
        Text('亲子')
          .fontColor('rgba(102, 102, 102, 1)')
          .fontSize(14)
          .fontWeight(42)
          .height(18)

        //自然风光
        Text('自然风光')
          .fontColor('rgba(102, 102, 102, 1)')
          .fontSize(14)
          .fontWeight(42)
          .height(18)
      }
      .width('100%')
      .padding({ left: 12, right: 9 })
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({ top: 12, bottom: 12 })


      Text('北京近期热门景点榜')
        .fontSize(24)
        .fontWeight(600)
        .fontColor('rgba(61, 26, 7, 1)')


      //榜单列表
      List() {


        //北京环球度假区最外层
        ListItem() {
          Row({ space: 8 }) {

            //北京环球度假区左侧图片区域
            Column() {
              Image($rawfile('universal.png'))
                .width(88)
                .height(175)
                .borderRadius(5)

              //左上角角标
              Column() {
                Image($rawfile('no_icon.png'))
                Text('No.1')
                  .fontSize(11)
                  .fontWeight(700)
                  .position({ x: 12, y: 6 })

              }
              .width(50)
              .height(28.23)
              .position({ x: -4 })
              .justifyContent(FlexAlign.Center)

            }


            //北京环球度假区右侧文字区域
            Column({ space: 6 }) {

              //北京环球度假区和收藏符号行
              Row() {
                Text('北京环球度假区')
                  .fontColor('rgba(51, 51, 51, 1)')
                  .fontSize(16)
                  .lineHeight(20)
                  .textAlign(TextAlign.Center)

                Image($rawfile('ic_xihuan.svg'))
                  .width(17.93)

              }
              .width('100%')
              .height(20)
              .justifyContent(FlexAlign.SpaceBetween)

              //评分价格行
              Row({ space: 9 }) {

                //热度符号
                Row() {
                  Image($rawfile('ic_huo.svg'))
                    .width(10)
                    .fillColor('#fff')

                  Text('10')
                    .fontSize(12)
                    .fontColor('#fff')

                }
                .padding(4)
                .borderRadius(4)
                .linearGradient({
                  direction: GradientDirection.Left,
                  colors: [['#FF856E', 0.1], ['#FF902A', 1.0]]
                })

                //中央文字区域 评分和评论
                Text('4.5分 1.8w条点评')
                  .fontSize(12)
                  .fontColor('rgba(102, 102, 102, 1)')
                  .fontWeight(400)

                //右侧文字
                Text('¥308起')
                  .fontSize(12)
                  .fontColor('rgba(102, 102, 102, 1)')
                  .fontWeight(400)


              }
              .width('100%')
              .justifyContent(FlexAlign.Start)


              //上榜理由
              Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {

                Image($rawfile('dianzan.png'))
                  .width(16)
                  .translate({ y: -2 })

                Text('上榜理由:')
                  .fontSize(13)
                  .fontWeight(600)
                  .fontColor('#5f2b0e')

                Text('这个冬天来环球影')
                  .fontColor('#5f2b0e')
                  .fontSize(13)

                Text('城，一起沉浸在冬日独有的浪漫，漫步在雪花飞舞的雪天，创造专属于')
                  .fontColor('#5f2b0e')
                  .fontSize(13)
                  .maxLines(2)
                  .textOverflow({ overflow: TextOverflow.Ellipsis })

              }
              .width(216)
              .height(72)
              .backgroundColor('rgba(255, 247, 241, 1)')
              .padding({
                top: 8,
                left: 8,
                right: 9,
                bottom: 10
              })
              .borderRadius(5)


              //嗨玩乐园 游乐园 小标签行
              Row({ space: 4 }) {

                Row() {
                  Text('嗨玩乐园')
                    .fontSize(10)
                    .fontColor('rgba(153, 174, 202, 1)')
                }
                .width(48)
                .height(17)
                .border({
                  width: 1,
                  style: BorderStyle.Solid,
                  color: 'rgba(153, 174, 202, 1)',
                  radius: 4
                })
                .justifyContent(FlexAlign.Center)

                Row() {
                  Text('游乐园')
                    .fontSize(10)
                    .fontColor('rgba(153, 174, 202, 1)')
                }
                .width(38)
                .height(17)
                .border({
                  width: 1,
                  style: BorderStyle.Solid,
                  color: 'rgba(153, 174, 202, 1)',
                  radius: 4
                })
                .justifyContent(FlexAlign.Center)

              }
              .width('100%')


              //地点 距离行
              Row({ space: 1 }) {

                Image($rawfile('daohang.svg'))
                  .height(14)
                  .fillColor('rgba(153, 153, 153, 1)')

                Row() {
                  Text('北京 · 果园环岛/通州区')
                    .fontSize(12)
                    .fontColor('rgba(153, 153, 153, 1)')
                  Text('距您36.7km')
                    .fontSize(12)
                    .fontColor('rgba(153, 153, 153, 1)')
                }
                .flexGrow(1)
                .justifyContent(FlexAlign.SpaceBetween)

              }
              .width('100%')
              .height(16)

            }
            .width(216)
            .height(175)

          }
          .backgroundColor('rgba(255, 255, 255, 1)')
          .shadow({
            color: 'rgba(0, 0, 0, 0.1)',
            offsetY: 2,
            offsetX: 0,
            radius: 20
          })
          .width(336)
          .height(199)
          .margin({ top: 12 })
        }


        //故宫博物院最外层
        ListItem() {
          Row({ space: 8 }) {

            //故宫博物院左侧图片区域
            Column() {
              Image($rawfile('gugong.png'))
                .width(88)
                .height(175)
                .borderRadius(5)

              //左上角角标
              Column() {
                Image($rawfile('no_icon.png'))
                Text('No.2')
                  .fontSize(11)
                  .fontWeight(700)
                  .position({ x: 12, y: 6 })

              }
              .width(50)
              .height(28.23)
              .position({ x: -4 })
              .justifyContent(FlexAlign.Center)

            }


            //故宫博物院右侧文字区域
            Column({ space: 6 }) {

              //故宫博物院和收藏符号行
              Row() {
                Text('故宫博物院')
                  .fontColor('rgba(51, 51, 51, 1)')
                  .fontSize(16)
                  .lineHeight(20)
                  .textAlign(TextAlign.Center)

                Text('5A')
                  .width(22)
                  .height(16)
                  .backgroundColor('rgba(238, 241, 246, 1)')
                  .textAlign(TextAlign.Center)
                  .fontSize(11)
                  .fontColor('rgba(86, 120, 168, 1)')
                  .margin({ left: 4, right: 92.17 })

                Image($rawfile('ic_xihuan.svg'))
                  .width(17.93)

              }
              .width('100%')
              .height(20)


              //评分价格行
              Row({ space: 9 }) {

                //热度符号
                Row() {
                  Image($rawfile('ic_huo.svg'))
                    .width(10)
                    .fillColor('#fff')

                  Text('10')
                    .fontSize(12)
                    .fontColor('#fff')

                }
                .padding(4)
                .borderRadius(4)
                .linearGradient({
                  direction: GradientDirection.Left,
                  colors: [['#FF856E', 0.1], ['#FF902A', 1.0]]
                })

                //中央文字区域 评分和评论
                Text('4.8分 14.6w条点评')
                  .fontSize(12)
                  .fontColor('rgba(102, 102, 102, 1)')
                  .fontWeight(400)

                // //右侧文字
                // Text('¥308起')
                //   .fontSize(12)
                //   .fontColor('rgba(102, 102, 102, 1)')
                //   .fontWeight(400)


              }
              .width('100%')
              .justifyContent(FlexAlign.Start)


              //上榜理由
              Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {

                Image($rawfile('dianzan.png'))
                  .width(16)
                  .translate({ y: -2 })

                Text('上榜理由:')
                  .fontSize(13)
                  .fontWeight(600)
                  .fontColor('#5f2b0e')

                Text('城墙建筑，院落布')
                  .fontColor('#5f2b0e')
                  .fontSize(13)

                Text('局，屋脊小兽，都包含着古代人民的巧夺天工，带小朋友穿梭明清时空')
                  .fontColor('#5f2b0e')
                  .fontSize(13)
                  .maxLines(2)
                  .textOverflow({ overflow: TextOverflow.Ellipsis })

              }
              .width(216)
              .height(72)
              .backgroundColor('rgba(255, 247, 241, 1)')
              .padding({
                top: 8,
                left: 8,
                right: 9,
                bottom: 10
              })
              .borderRadius(5)


              //小标签行
              Row({ space: 4 }) {

                Row() {
                  Text('探秘展馆')
                    .fontSize(10)
                    .height(17)
                    .fontColor('rgba(153, 174, 202, 1)')
                    .textAlign(TextAlign.Center)
                }
                .padding({ left: 4, right: 4 })
                .border({
                  width: 1,
                  style: BorderStyle.Solid,
                  color: 'rgba(153, 174, 202, 1)',
                  radius: 4
                })
                .justifyContent(FlexAlign.Center)

                Row() {
                  Text('文化古迹')
                    .fontSize(10)
                    .height(17)
                    .fontColor('rgba(153, 174, 202, 1)')
                    .textAlign(TextAlign.Center)
                }
                .border({
                  width: 1,
                  style: BorderStyle.Solid,
                  color: 'rgba(153, 174, 202, 1)',
                  radius: 4
                })
                .justifyContent(FlexAlign.Center)
                .padding({ left: 4, right: 4 })

                Row() {
                  Text('博物馆')
                    .fontSize(10)
                    .height(17)
                    .fontColor('rgba(153, 174, 202, 1)')
                    .textAlign(TextAlign.Center)
                }
                .border({
                  width: 1,
                  style: BorderStyle.Solid,
                  color: 'rgba(153, 174, 202, 1)',
                  radius: 4
                })
                .justifyContent(FlexAlign.Center)
                .padding({ left: 4, right: 4 })

                Row() {
                  Text('场馆展馆')
                    .fontSize(10)
                    .height(17)
                    .fontColor('rgba(153, 174, 202, 1)')
                    .textAlign(TextAlign.Center)
                }
                .border({
                  width: 1,
                  style: BorderStyle.Solid,
                  color: 'rgba(153, 174, 202, 1)',
                  radius: 4
                })
                .justifyContent(FlexAlign.Center)
                .padding({ left: 4, right: 4 })

              }
              .width('100%')


              //地点 距离行
              Row({ space: 1 }) {

                Image($rawfile('daohang.svg'))
                  .height(14)
                  .fillColor('rgba(153, 153, 153, 1)')

                Row() {
                  Text('北京 · 天安门/王府井')
                    .fontSize(12)
                    .fontColor('rgba(153, 153, 153, 1)')
                  Text('距您16.5km')
                    .fontSize(12)
                    .fontColor('rgba(153, 153, 153, 1)')
                }
                .flexGrow(1)
                .justifyContent(FlexAlign.SpaceBetween)

              }
              .width('100%')
              .height(16)

            }
            .width(216)
            .height(175)

          }
          .backgroundColor('rgba(255, 255, 255, 1)')
          .shadow({
            color: 'rgba(0, 0, 0, 0.1)',
            offsetY: 2,
            offsetX: 0,
            radius: 20
          })
          .width(336)
          .height(199)
          .margin({ top: 12 })
        }



        //八达岭长城最外层
        ListItem() {
          Row({ space: 8 }) {

            //八达岭长城左侧图片区域
            Column() {
              Image($rawfile('greatwall.png'))
                .width(88)
                .height(175)
                .borderRadius(5)

              //左上角角标
              Column() {
                Image($rawfile('no_icon.png'))
                Text('No.3')
                  .fontSize(11)
                  .fontWeight(700)
                  .position({ x: 12, y: 6 })

              }
              .width(50)
              .height(28.23)
              .position({ x: -4 })
              .justifyContent(FlexAlign.Center)

            }


            //故宫博物院右侧文字区域
            Column({ space: 6 }) {

              //故宫博物院和收藏符号行
              Row() {
                Text('八达岭长城')
                  .fontColor('rgba(51, 51, 51, 1)')
                  .fontSize(16)
                  .lineHeight(20)
                  .textAlign(TextAlign.Center)

                Text('5A')
                  .width(22)
                  .height(16)
                  .backgroundColor('rgba(238, 241, 246, 1)')
                  .textAlign(TextAlign.Center)
                  .fontSize(11)
                  .fontColor('rgba(86, 120, 168, 1)')
                  .margin({ left: 4, right: 92.17 })

                Image($rawfile('ic_xihuan.svg'))
                  .width(17.93)

              }
              .width('100%')
              .height(20)


              //评分价格行
              Row({ space: 9 }) {

                //热度符号
                Row() {
                  Image($rawfile('ic_huo.svg'))
                    .width(10)
                    .fillColor('#fff')

                  Text('9.8')
                    .fontSize(12)
                    .fontColor('#fff')

                }
                .padding(4)
                .borderRadius(4)
                .linearGradient({
                  direction: GradientDirection.Left,
                  colors: [['#FF856E', 0.1], ['#FF902A', 1.0]]
                })

                //中央文字区域 评分和评论
                Text('4.7分 3.7w条点评')
                  .fontSize(12)
                  .fontColor('rgba(102, 102, 102, 1)')
                  .fontWeight(400)

                //右侧文字
                Text('¥35起')
                  .fontSize(12)
                  .fontColor('rgba(102, 102, 102, 1)')
                  .fontWeight(400)


              }
              .width('100%')
              .justifyContent(FlexAlign.Start)


              //上榜理由
              Flex({ direction: FlexDirection.Row, wrap: FlexWrap.Wrap }) {

                Image($rawfile('dianzan.png'))
                  .width(16)
                  .translate({ y: -2 })

                Text('上榜理由:')
                  .fontSize(13)
                  .fontWeight(600)
                  .fontColor('#5f2b0e')

                Text('中国古代伟大的防御')
                  .fontColor('#5f2b0e')
                  .fontSize(13)

                Text('工程，适合带小朋友领略奇骏险要的地势和长城磅礴恢弘的风采。')
                  .fontColor('#5f2b0e')
                  .fontSize(13)
                  .maxLines(2)
                  .textOverflow({ overflow: TextOverflow.Ellipsis })

              }
              .width(216)
              .height(72)
              .backgroundColor('rgba(255, 247, 241, 1)')
              .padding({
                top: 8,
                left: 8,
                right: 9,
                bottom: 10
              })
              .borderRadius(5)


              //小标签行
              Row({ space: 4 }) {

                // Row() {
                //   Text('探秘展馆')
                //     .fontSize(10)
                //     .height(17)
                //     .fontColor('rgba(153, 174, 202, 1)')
                //     .textAlign(TextAlign.Center)
                // }
                // .padding({ left: 4, right: 4 })
                // .border({
                //   width: 1,
                //   style: BorderStyle.Solid,
                //   color: 'rgba(153, 174, 202, 1)',
                //   radius: 4
                // })
                // .justifyContent(FlexAlign.Center)

                Row() {
                  Text('文化古迹')
                    .fontSize(10)
                    .height(17)
                    .fontColor('rgba(153, 174, 202, 1)')
                    .textAlign(TextAlign.Center)
                }
                .border({
                  width: 1,
                  style: BorderStyle.Solid,
                  color: 'rgba(153, 174, 202, 1)',
                  radius: 4
                })
                .justifyContent(FlexAlign.Center)
                .padding({ left: 4, right: 4 })

                // Row() {
                //   Text('博物馆')
                //     .fontSize(10)
                //     .height(17)
                //     .fontColor('rgba(153, 174, 202, 1)')
                //     .textAlign(TextAlign.Center)
                // }
                // .border({
                //   width: 1,
                //   style: BorderStyle.Solid,
                //   color: 'rgba(153, 174, 202, 1)',
                //   radius: 4
                // })
                // .justifyContent(FlexAlign.Center)
                // .padding({ left: 4, right: 4 })
                //
                // Row() {
                //   Text('场馆展馆')
                //     .fontSize(10)
                //     .height(17)
                //     .fontColor('rgba(153, 174, 202, 1)')
                //     .textAlign(TextAlign.Center)
                // }
                // .border({
                //   width: 1,
                //   style: BorderStyle.Solid,
                //   color: 'rgba(153, 174, 202, 1)',
                //   radius: 4
                // })
                // .justifyContent(FlexAlign.Center)
                // .padding({ left: 4, right: 4 })

              }
              .width('100%')


              //地点 距离行
              Row({ space: 1 }) {

                Image($rawfile('daohang.svg'))
                  .height(14)
                  .fillColor('rgba(153, 153, 153, 1)')

                Row() {
                  Text('北京 · 天安门/王府井')
                    .fontSize(12)
                    .fontColor('rgba(153, 153, 153, 1)')
                  Text('距您16.5km')
                    .fontSize(12)
                    .fontColor('rgba(153, 153, 153, 1)')
                }
                .flexGrow(1)
                .justifyContent(FlexAlign.SpaceBetween)

              }
              .width('100%')
              .height(16)

            }
            .width(216)
            .height(175)

          }
          .backgroundColor('rgba(255, 255, 255, 1)')
          .shadow({
            color: 'rgba(0, 0, 0, 0.1)',
            offsetY: 2,
            offsetX: 0,
            radius: 20
          })
          .width(336)
          .height(199)
          .margin({ top: 12 })
        }


      }
      .listDirection(Axis.Vertical)
      .width('100%')
      .height(410)
      .alignListItem(ListItemAlign.Center)

    }
    .width('100%')
    .height('100%')
  }
}