import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfiniteScrollScreen extends StatefulWidget {

  static const name = 'infinite_screen';
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {

  List<int> imagesIds = [1,2,3,4,5];
  bool isLoading = false;
  bool ismounted = true;
  final ScrollController listController = ScrollController();

  void addFiveImages(){

    final lastId = imagesIds.last;

    imagesIds.addAll(
      [1,2,3,4,5].map((e) => lastId + e )
    );
  }

  Future loadNextPage() async {
    if(isLoading) return;
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));
    addFiveImages();
    isLoading= false;

    if(!ismounted) return;
    setState(() {});

    // Todo : mover scroll
    moveScrollToBottom();
  }


  Future<void> onRefresh() async {
    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));

    if(!ismounted) return;

    isLoading = false;
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId +1 );

    addFiveImages();

    setState(() {});
  }


  void moveScrollToBottom(){

    if((listController.position.pixels + 100) <= listController.position.maxScrollExtent) return;

    listController.animateTo(
      listController.position.pixels + 150, 
      duration: const Duration(microseconds: 300),
      curve: Curves.decelerate
      );
  }

  @override
  void initState() {
    super.initState();

    listController.addListener(() {
      if( (listController.position.pixels + 300) >= listController.position.maxScrollExtent ){
          loadNextPage();
      }
    });
  }


  @override
  void dispose() {
    listController.dispose();
    ismounted = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeBottom: true,
        removeTop: true,
        child: RefreshIndicator(
          edgeOffset: 10, // altura del RefreshProgressIndicator
          onRefresh: onRefresh,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            controller: listController ,
            itemCount: imagesIds.length,
            itemBuilder: (context, index) {
              return FadeInImage(
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
                placeholder: const AssetImage('assets/images/jar-loading.gif'),
                image: NetworkImage('https://picsum.photos/id/${imagesIds[index]}/500/300')
              );
            }, 
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () =>  isLoading ? null : context.pop(),
        child: isLoading ? 
          SpinPerfect(
            infinite: true,
            child: const Icon(Icons.refresh_rounded)
          )
          :
          FadeIn(child: const Icon(Icons.arrow_back_ios_new_outlined))
      ),
    );
  }
}