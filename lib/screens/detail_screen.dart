import 'package:flutter/material.dart';
import '../model/recipe.dart';

class DetailScreen extends StatefulWidget {
  final Recipe recipe;

  const DetailScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191919),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth >= 880) {
                return _buildWebLayout(context);
              } else if (orientation == Orientation.landscape) {
                return _buildMobileLandscapeLayout(context);
              } else {
                return _buildMobileLayout(context);
              }
            },
          );
        },
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                Text(
                  widget.recipe.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const FavoriteButton(),
              ],
            ),
          ),

          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: _isExpanded ? 150 : 250,
            child: Center(
              child: Hero(
                tag: widget.recipe.name,
                child: Container(
                  width: _isExpanded ? 150 : 250,
                  height: _isExpanded ? 150 : 250,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 30,
                        spreadRadius: 5,
                      ),
                    ],
                    image: DecorationImage(
                      image: AssetImage(widget.recipe.imageAsset),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          if (!_isExpanded) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.location_pin, color: Color(0xFFFDC912)),
                const SizedBox(width: 5),
                Text(
                  "${widget.recipe.place}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],

          Expanded(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
              decoration: const BoxDecoration(
                color: Color(0xFF262626),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade700,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildRecipeMobile(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMobileLandscapeLayout(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                Center(
                  child: Hero(
                    tag: widget.recipe.name,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 20,
                            spreadRadius: 5,
                          ),
                        ],
                        image: DecorationImage(
                          image: AssetImage(widget.recipe.imageAsset),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.location_pin, color: Color(0xFFFDC912)),
                      const SizedBox(width: 5),
                      Text(
                        widget.recipe.place,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 6,
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 10, 10),
              decoration: BoxDecoration(
                color: const Color(0xFF262626),
                borderRadius: BorderRadius.circular(30),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            widget.recipe.name,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const FavoriteButton(),
                      ],
                    ),
                    const SizedBox(height: 20),
                    _buildRecipeMobile(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecipeMobile() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Recipe",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFFFDC912),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "${widget.recipe.timeMinutes} MIN",
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),

        ..._buildCookingSteps(),

        const SizedBox(height: 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Ingredients",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: widget.recipe.ingredients.map((ingredient) {
              return _buildIngredientItem(
                ingredient['name']!,
                ingredient['emoji']!,
              );
            }).toList(),
          ),
        ),

        const SizedBox(height: 30),

        // Show More Button
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                _isExpanded ? "Show less" : "Show more",
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                _isExpanded
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down,
                color: Colors.white,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }

  // Web Layout
  Widget _buildWebLayout(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            color: const Color(0xFF191919),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Hero(
                        tag: widget.recipe.name,
                        child: Container(
                          width: 450,
                          height: 450,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 40,
                                spreadRadius: 10,
                              ),
                            ],
                            image: DecorationImage(
                              image: AssetImage(widget.recipe.imageAsset),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.location_pin,
                          color: Color(0xFFFDC912),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          widget.recipe.place,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  top: 40,
                  left: 30,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            color: const Color(0xFF262626),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.recipe.name,
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const FavoriteButton(),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Recipe",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFDC912),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "${widget.recipe.timeMinutes} MIN",
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  ..._buildCookingStepsWeb(),
                  const SizedBox(height: 25),
                  const Text(
                    "Ingredients",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: widget.recipe.ingredients
                          .map(
                            (ingredient) => _buildIngredientItem(
                              ingredient['name']!,
                              ingredient['emoji']!,
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildCookingSteps() {
    int count = _isExpanded ? widget.recipe.cookingSteps.length : 1;

    return List.generate(count, (index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFDC912),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  "Step ${index + 1}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                widget.recipe.cookingSteps[index],
                style: TextStyle(color: Colors.grey.shade400, height: 1.5),
              ),
            ),
          ],
        ),
      );
    });
  }

  List<Widget> _buildCookingStepsWeb() {
    return List.generate(widget.recipe.cookingSteps.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFDC912),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  "Step ${index + 1}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Text(
                widget.recipe.cookingSteps[index],
                style: TextStyle(
                  color: Colors.grey.shade400,
                  height: 1.6,
                  fontSize: 19,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  Widget _buildIngredientItem(String name, String emoji) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      width: 80,
      height: 110,
      decoration: BoxDecoration(
        color: const Color(0xFF333333),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(emoji, style: const TextStyle(fontSize: 30)),
          const SizedBox(height: 8),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Color(0xFFFDC912),
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
