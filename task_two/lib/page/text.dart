import 'package:flutter/material.dart';

class AnimatedListContainer extends StatefulWidget {
  @override
  _AnimatedListContainerState createState() => _AnimatedListContainerState();
}

class _AnimatedListContainerState extends State<AnimatedListContainer>
    with SingleTickerProviderStateMixin {
  bool _isContainerVisible = false;

  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleContainerVisibility() {
    setState(() {
      _isContainerVisible = !_isContainerVisible;

      if (_isContainerVisible) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: _toggleContainerVisibility,
          child: Container(
            color: Colors.blue,
            height: 100,
            width: 200,
            child: Center(
              child: Text(
                'Tap to Show List',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: _isContainerVisible,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            height: _isContainerVisible ? 150 : 0,
            width: 200,
            color: Colors.white,
            child: ListView(
              padding: EdgeInsets.all(8.0),
              children: [
                ListTile(title: Text('Item 1')),
                ListTile(title: Text('Item 2')),
                ListTile(title: Text('Item 3')),
                ListTile(title: Text('Item 4')),
                ListTile(title: Text('Item 5')),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// Usage:
class TextDropDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated List Container'),
      ),
      body: Center(
        child: AnimatedListContainer(),
      ),
    );
  }
}
