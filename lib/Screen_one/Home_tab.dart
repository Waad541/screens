import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam/Screen_one/small_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Health_container.dart';
import 'emoji_container.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  int selected=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Hello,',
                style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff371B34)
                ),
              ),
              Text(
                ' Sara Rose',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff371B34)
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Text(
            'How are you feeling today ?',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            )
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              EmojiContainer(image: 'assets/images/love.png',text: 'Love',),
              EmojiContainer(image: 'assets/images/cool.png',text: 'Cool'),
              EmojiContainer(image: 'assets/images/happy.png',text: 'Happy'),
              EmojiContainer(image: 'assets/images/sad.png',text: 'Sad'),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Feature',style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
              ),),
              Row(
                children: [
                  Text('See more ',style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff027A48),
                  )
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,size: 14,color: Color(0xff027A48),)
                ],
              )
            ],
          ),
          SizedBox(height: 20),
          CarouselSlider.builder(
              itemCount: 3,
              itemBuilder:(context, index, realIndex){
                return HealthContainer();
              } ,
              options: CarouselOptions(
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: (index,reason){
                    setState(() {

                    });
                    selected=index;
                  }
              )),
          SizedBox(height: 10),
          Center(
            child:
            BuildIndicator(),
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Exercise',style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
              ),),
              Row(
                children: [
                  Text('See more ',style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff027A48),
                  )),
                  Icon(Icons.arrow_forward_ios_rounded,size: 14,color: Color(0xff027A48),)
                ],
              )
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SmallContainer(
                text: 'Relaxation',
                image: 'assets/images/Relax.png',
                color: Color(0xffF9F5FF),
              ),
              SmallContainer(
                text: 'Meditation',
                image: 'assets/images/maditation.png',
                color: Color(0xffFDF2FA),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SmallContainer(
                text: 'Breath',
                image: 'assets/images/breath.png',
                color: Color(0xffFFFAF5),
              ),
              SmallContainer(
                text: 'Yoga',
                image: 'assets/images/yoga.png',
                color: Color(0xffF0F9FF),
              ),
            ],
          ),


        ],
      ),
    );
  }

  Widget BuildIndicator() =>
      AnimatedSmoothIndicator(activeIndex: selected, count: 3,
        effect: JumpingDotEffect(
          activeDotColor:Color(0xff027A48),
          dotHeight: 8,
          dotWidth: 8,
        ),
      );
}
