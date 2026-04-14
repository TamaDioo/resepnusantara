import 'package:flutter/material.dart';
import 'home_screen.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191919),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return LayoutBuilder(
            builder: (context, constraints) {
              bool isWeb = constraints.maxWidth > 800;
              bool isLandscapeMobile =
                  orientation == Orientation.landscape && !isWeb;
              if (isWeb) {
                return _buildWebLayout(context);
              } else if (isLandscapeMobile) {
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

  // Mobile Layout (Vertical)
  Widget _buildMobileLayout(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Center(child: _buildHeroImage(300)),
                    const Spacer(),
                    _buildTextContent(),
                    const SizedBox(height: 40),
                    _buildButton(context),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildMobileLandscapeLayout(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Row(
          children: [
            Expanded(flex: 1, child: Center(child: _buildHeroImage(220))),
            const SizedBox(width: 30),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Tengah Vertikal
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTextContent(isWeb: false),
                    const SizedBox(height: 24),
                    _buildButton(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Web Layout (Horizontal)
  Widget _buildWebLayout(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1200),
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTextContent(isWeb: true),
                  const SizedBox(height: 40),
                  SizedBox(width: 250, child: _buildButton(context)),
                ],
              ),
            ),
            Expanded(
              child: Center(child: _buildHeroImage(450)), // Gambar lebih besar
            ),
          ],
        ),
      ),
    );
  }

  // Common Widgets
  Widget _buildHeroImage(double size) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFFDC912).withOpacity(0.15),
            blurRadius: 60,
            spreadRadius: 20,
          ),
        ],
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("images/landing.jpg"),
        ),
      ),
    );
  }

  Widget _buildTextContent({bool isWeb = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Delicious Nusantara Foods.",
          style: TextStyle(
            color: Colors.white,
            fontSize: isWeb ? 56 : 38,
            fontWeight: FontWeight.bold,
            height: 1.1,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          isWeb
              ? "Temukan resep masakan Nusantara terbaik\nsesuai selera Anda."
              : "Temukan resep masakan Nusantara\nterbaik sesuai selera Anda.",
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 16,
            height: 1.5,
          ),
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFDC912),
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 0,
        ),
        child: const Text(
          "Get Started",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
