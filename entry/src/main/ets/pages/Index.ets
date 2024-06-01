@Entry
@Component
struct Index {
  build(){
    //根组件
    Column(){


      //置顶logo
      Column(){
        //携程口碑榜logo
        Image($rawfile('log.png'))
          .width(200)
          .offset({y:70})

        //推荐榜单
        List(){
          ListItem(){
            Column(){
              Image($rawfile('rank.png'))
                .width('34%')
            }
          }

          ListItem(){
            Column(){
              Image($rawfile('hot.png'))
                .width('34%')
            }
          }

          ListItem(){
            Column(){
              Image($rawfile('scenery.png'))
                .width('34%')
            }
          }

          ListItem(){
            Column(){
              Image($rawfile('ski.png'))
                .width('34%')
            }
          }

        }
        .listDirection(Axis.Horizontal)
        .height(82)
        .position({y:160})
        .scrollBar(BarState.Off)


        //评选规则右侧挂组件
        Column(){
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
        .position({x:'100%',y:120})
        .translate({x:-54})


      }
      .backgroundImage($rawfile('banner.png'))
      .width('100%')
      .height(264)



      //城市选择及目的地
      Row(){

        //城市选择组件
        Row({space:4.5}){
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
          colors:[['rgba(255, 226, 200, 1)',0],['rgba(230, 175, 138, 1)',1]],
          direction:GradientDirection.Right
        })
        .justifyContent(FlexAlign.Center)



        //目的地选择
        Row(){
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
      .padding({left:10,right:10})
      .margin({top:24.12})



      //酒店 景点 夜游 美食最外层组件
      Row(){

        //酒店
        Row(){
          Text('酒店')
            .fontColor('rgba(0, 0, 0, 1)')
            .fontSize(16)
            .fontWeight(400)
        }
        .width(78)
        .height(36)
        .backgroundColor('rgba(255, 255, 255, 0.8)')
        .shadow({
          color:'rgba(47, 27, 14, 0.07)',
          radius:8,
          offsetX:1,
          offsetY:1
        })
        .justifyContent(FlexAlign.Center)
        .alignItems(VerticalAlign.Center)
        .borderRadius(4)


        //景点
        Row(){
          Text('景点')
            .fontColor('rgba(255, 255, 255, 1)')
            .fontSize(16)
            .fontWeight(400)
        }
        .width(78)
        .height(36)
        .linearGradient({
          colors:[['rgba(179, 109, 62, 0.8)',0],['rgba(204, 148, 102, 0.8)',1]],
          direction:GradientDirection.Right
        })
        .shadow({
          color:'rgba(47, 27, 14, 0.07)',
          radius:8,
          offsetX:1,
          offsetY:1
        })
        .justifyContent(FlexAlign.Center)
        .alignItems(VerticalAlign.Center)
        .borderRadius(4)


        //夜游
        Row(){
          Text('夜游')
            .fontColor('rgba(0, 0, 0, 1)')
            .fontSize(16)
            .fontWeight(400)
        }
        .width(78)
        .height(36)
        .backgroundColor('rgba(255, 255, 255, 0.8)')
        .shadow({
          color:'rgba(47, 27, 14, 0.07)',
          radius:8,
          offsetX:1,
          offsetY:1
        })
        .justifyContent(FlexAlign.Center)
        .alignItems(VerticalAlign.Center)
        .borderRadius(4)


        //美食
        Row(){
          Text('美食')
            .fontColor('rgba(0, 0, 0, 1)')
            .fontSize(16)
            .fontWeight(400)
        }
        .width(78)
        .height(36)
        .backgroundColor('rgba(255, 255, 255, 0.8)')
        .shadow({
          color:'rgba(47, 27, 14, 0.07)',
          radius:8,
          offsetX:1,
          offsetY:1
        })
        .justifyContent(FlexAlign.Center)
        .alignItems(VerticalAlign.Center)
        .borderRadius(4)

      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({top:24})
      .padding({left:12,right:12})




      //近期热门 必打卡 滑雪 亲子 自然风光
      Row({space:25}){

        //近期热门
        Row(){
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
      .padding({left:12,right:9})
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({top:12,bottom:12})



      Text('北京近期热门景点榜')
        .fontSize(24)
        .fontWeight(600)
        .fontColor('rgba(61, 26, 7, 1)')


      //北京环球度假区最外层
      Row({space:8}){

        //北京环球度假区左侧图片区域
        Column(){
          Image($rawfile('universal.png'))
            .width(88)
            .height(175)
            .borderRadius(5)

          //左上角角标
          Column(){
            Text('No.1')
              .fontSize(11)
              .fontWeight(700)

          }
          .width(50)
          .height(28.23)
          .position({x:-4})
          .linearGradient({
            colors:[['rgba(234, 213, 203, 1.00)',0],['rgba(230, 178, 133, 1.00)',1]],
            direction:GradientDirection.Right
          })
          .borderRadius(5)
          .shadow({
            radius:8,
            color: 'rgba(98, 59, 9, 0.10)',
            offsetY:2,
            offsetX:-2
          })
          .justifyContent(FlexAlign.Center)


        }


        //北京环球度假区右侧文字区域
        Column({space:6}){

          //北京环球度假区和收藏符号行
          Row(){
            Text('北京环球度假区')
              .fontColor('rgba(51, 51, 51, 1)')
              .fontSize(16)
              .lineHeight(20)
              .textAlign(TextAlign.Center)

            Image($rawfile('ic_xihuan.svg'))
              .width(17.93)
              .height(16.67)
          }
          .width('100%')
          .height(20)
          .justifyContent(FlexAlign.SpaceBetween)

          //评分价格行
          Row({space:9}){

            //热度符号
            Row(){
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
          Column(){

            Row(){
              Image($rawfile('dianzan.png'))
                .width(16)
              Text('上榜理由:')
                .fontSize(13)
                .fontWeight(600)
                .fontColor('#5f2b0e')
              Text('这个冬天来环球影城，⼀起沉浸在冬⽇独有的浪漫，漫步在雪花⻜舞的雪天，创造专属于')
                .fontColor('#5f2b0e')
                .fontSize(13)
            }

          }
          .width(216)
          .height(72)
          .backgroundColor('rgba(255, 247, 241, 1)')
          .padding({
            top:8,
            left:8,
            right:9,
            bottom:10
          })


        }
        .width(216)
        .height(175)

      }
      .backgroundColor('rgba(255, 255, 255, 1)')
      .shadow({
        color:'rgba(0, 0, 0, 0.1)',
        offsetY:2,
        offsetX:0,
        radius:20
      })
      .width(336)
      .height(199)
      .margin({top:12})



    }
    .width(360)
    .height('100%')
  }
}