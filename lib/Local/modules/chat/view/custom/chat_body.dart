import 'package:flutter/material.dart';
import 'chat_body_image.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 2, child: ChatBodyImage()),
        Expanded(
          flex: 8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Jennifer Fritz",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    Text(
                      "3:15 PM",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem Ipsum is simply dummy",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
