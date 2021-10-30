import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileSelector extends StatelessWidget {
  const ProfileSelector({Key? key}) : super(key: key);
  Widget getProfileTile(BuildContext context, String name, String university) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ElevatedButton(
        onPressed: (){},
        child: Row(
          children: [
            const Icon(Icons.perm_contact_cal_rounded, size: 50,),
            const SizedBox(width: 10,),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: Theme.of(context).textTheme.headline5),
                  Text(university)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        getProfileTile(context, 'John Doe', 'University of Kelaniya'),
        getProfileTile(context, 'Mark Twain', 'University of Moratuwa'),
        getProfileTile(context, 'Robin Hood', 'NSBM'),
      ],
    );
  }
}
