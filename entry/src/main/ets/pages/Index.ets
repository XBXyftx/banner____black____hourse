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


    }
    .width(360)
    .height('100%')
  }
}