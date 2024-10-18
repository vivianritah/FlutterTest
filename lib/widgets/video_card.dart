import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final bool isShorts;

  VideoCard({this.isShorts = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      width: isShorts ? 150 : null, // Width for shorts
      child: Column(
        children: [
          Container(
            color: Colors.grey[300],
            height: isShorts
                ? 106 // Reduced height for shorts by 14px
                : 100, // Regular video height
            child: Center(
              child: Icon(Icons.play_circle_outline, size: 40), // Placeholder
            ),
          ),
          SizedBox(height: 8),
          Text(
            isShorts ? 'Shorts Title' : 'Video Title',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (!isShorts) ...[
            Text('Channel Name'),
            Text('Views • Time'),
          ],
        ],
      ),
    );
  }
}
