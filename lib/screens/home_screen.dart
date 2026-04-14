import 'package:flutter/material.dart';
import '../model/recipe.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191919),
      body: LayoutBuilder(
        builder: (context, constraints) {
          int crossAxisCount = 1;
          if (constraints.maxWidth > 1100) {
            crossAxisCount = 3;
          } else if (constraints.maxWidth > 680) {
            crossAxisCount = 2;
          }

          return SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: constraints.maxWidth > 800 ? 50 : 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  _buildHeader(),
                  const SizedBox(height: 30),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'New Dishes ',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: '11',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFDC912),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.tune, color: Colors.white),
                    ],
                  ),
                  const SizedBox(height: 20),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildCategoryChip('Main dishes', true),
                        _buildCategoryChip('Deserts', false),
                        _buildCategoryChip('Meat', false),
                        _buildCategoryChip('Vegan', false),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  Expanded(
                    child: crossAxisCount == 1
                        ? ListView.builder(
                            itemCount: recipes.length,
                            itemBuilder: (context, index) {
                              return _buildRecipeCard(recipes[index], context);
                            },
                          )
                        : GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: crossAxisCount,
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20,
                                  childAspectRatio: 1.8,
                                ),
                            itemCount: recipes.length,
                            itemBuilder: (context, index) {
                              return _buildRecipeCard(recipes[index], context);
                            },
                          ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Hi Dio Andika',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Semoga mood kamu saat ini bagus untuk memasak',
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: const CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryChip(String label, bool isActive) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF262626) : Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        border: isActive ? null : Border.all(color: Colors.grey.shade800),
      ),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
              color: isActive ? Colors.white : Colors.grey,
              fontWeight: FontWeight.w600,
            ),
          ),
          if (isActive) ...[
            const SizedBox(width: 8),
            const Icon(Icons.close, size: 16, color: Colors.white),
          ],
        ],
      ),
    );
  }

  Widget _buildRecipeCard(Recipe recipe, BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = MediaQuery.of(context).size.width;
        final isLargeScreen = screenWidth > 1440;
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DetailScreen(recipe: recipe)),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 20),
            height: 160,
            decoration: BoxDecoration(
              color: const Color(0xFF262626),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          recipe.name,
                          style: TextStyle(
                            fontSize: isLargeScreen ? 22 : 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          maxLines: 2,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: Color(0xFFFDC912),
                              size: isLargeScreen ? 22 : 18,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              recipe.place,
                              style: TextStyle(
                                color: Color.fromRGBO(158, 158, 158, 1),
                                fontSize: isLargeScreen ? 14 : 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFDC912),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "${recipe.timeMinutes} MIN",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: isLargeScreen ? 14 : 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Hero(
                    tag: recipe.name,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(24),
                          bottomRight: Radius.circular(24),
                        ),
                        image: DecorationImage(
                          image: AssetImage(recipe.imageAsset),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
