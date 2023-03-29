import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Row dash(String element, String result, String status) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            element,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            result,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            status,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    ],
  );
}
