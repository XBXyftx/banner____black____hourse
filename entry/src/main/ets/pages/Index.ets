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
        }
        .width(163)
        .height(36)
        .borderRadius(36)
        .justifyContent(FlexAlign.Center)

      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
      .padding({left:10,right:10})
      .margin({top:24.12})


    }
    .width(360)
    .height('100%')
  }
}