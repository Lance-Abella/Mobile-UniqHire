// ignore_for_file: prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace, unused_import, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:uniqhire/model/companies.dart';

import '../custom_design/clear_button.dart';
import '../custom_design/textstyles.dart';
import '../provider/searchCompany_provider.dart';

class CompanyScreen extends StatefulWidget {
  const CompanyScreen({super.key});

  @override
  State<CompanyScreen> createState() => _CompanyScreenState();
}

class _CompanyScreenState extends State<CompanyScreen> {
  TextEditingController searchKeyword = TextEditingController();

 @override
  void initState() {
    super.initState();    
  }

  void clearSearchBar() {
    searchKeyword.clear();
    Provider.of<SearchCompanyProvider>(context, listen: false).updateResults("");
  } 
  
   @override
  Widget build(BuildContext context) {    
    final searchCompanyProvider = Provider.of<SearchCompanyProvider>(context);

    searchKeyword.addListener(() {
      searchCompanyProvider.updateResults(searchKeyword.text);
    });

    List<Company> agencies = searchCompanyProvider.results;
    

    return Scaffold(

      appBar: AppBar(
        title: Text(
          "Companies",
          style: TextStyles.appbarStyle,
          ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,


        leading: GestureDetector(
           onTap: () {
              // Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: CompanyScreen()));
            },
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Image(
              image: AssetImage('assets/backarrow-g.jpg'),
              height: 20,
              width: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
          ),
        ),


        actions: [
          Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          width: 37,
          child: Image(
            image: AssetImage('assets/3-dots.jpg'),
            height: 20,
            width: 20,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
        ),
        ],
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 40, left: 20, right: 20),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.11),
                    blurRadius: 40,
                    spreadRadius: 0.0,
                  )
                ]
              ),
        
              //Search Bar
              child: TextField(
                controller: searchKeyword,
                onChanged: (text){
                  if(text.isEmpty){
                    clearSearchBar();
                  }
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(15),
                  hintText: "Search a company",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
        
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Image(
                      image: AssetImage('assets/search-icon.png'),
                      width: 10,
                      height: 10,
                      fit: BoxFit.contain,                    
                    ),
                  ),
        
                  suffixIcon: Container(
                    width: 100,
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [  
                                                  
                          ClearButton(onTap: () => clearSearchBar()),
                                                    
                          VerticalDivider(
                            color: Colors.black,
                            indent: 10,
                            endIndent: 10,
                            thickness: 0.3,
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage('assets/filter.png'),
                              width: 15,
                              height: 15,
                              fit: BoxFit.contain,                    
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
        
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  )
                ),
              ),
            ),

            SizedBox(height:10),
        
            Padding(
              padding: EdgeInsets.all(15.0),              
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  mainAxisExtent: 300),                  
                itemCount: searchCompanyProvider.results.length, 
                itemBuilder: (context, index) {                  

                  Company company = companies[index];                  

                  return Container(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    decoration: BoxDecoration(
                                  color: Color(0xffE5E1DA),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                    
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: AgencyDetails(agency: agency,)));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image(
                                      image: AssetImage(companies[index].image),
                                      fit: BoxFit.cover,                                                 
                                    ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height:10),

                        Stack(
                          children: [Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Text(
                                  agencies[index].name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 13),                              
                                ),
                              ),

                             
                            ],
                          ),

                          
                          Container(
                          margin: EdgeInsets.only(top: 30),
                           child: Flexible(
                                  child: Text(
                                    agencies[index].desc,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff697960),
                                      fontSize: 12),                              
                                  ),
                                ),
                         ),

                         Container(
                          margin: EdgeInsets.only(top: 100),
                          child: Flexible(
                            child: RichText(
                              text: TextSpan(
                                text: "We accept: ",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff697960),
                                  fontWeight: FontWeight.w400,
                                ),
                                children: [
                                  TextSpan(
                                    text: agencies[index].hiring,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff697960),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),


                       
                         // Adjust the width of the space between text and button
                        Container(
                          margin: EdgeInsets.only(top: 140,  ),
                          child: SizedBox(
                            width: 150, // Set the desired width
                            height: 34,
                            child: TextButton(
                              style:  ButtonStyle(
                                iconSize: MaterialStateProperty.all<double>(10.0),
                                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF697960)),
                              ),
                                onPressed: () {
                                // Handle button press
                              },
                              child: Text(
                                "Apply",
                                style: TextStyle(
                                // Specify the desired text style properties here
                                color: Colors.white, // Example: Change text color to white
                                fontSize: 12, // Example: Set font size to 16
                                // fontWeight: FontWeight.bold,
                              ),
                              ),
                            ),
                          ),
                        ), 
                      ],),                               
                      ],
                    ),
                  );
                }),
            )
          ],
        ),
      ),
    );
  }
}
