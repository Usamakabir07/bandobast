import 'package:bandobast/app/pages/home_page/widget/google_map_widget.dart';
import 'package:bandobast/app/pages/request_page/widget/autocomplete_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../themes/app_colors.dart';
import '../../../utils/dimensions.dart';

class HomePageBody extends HookWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    /// SHARED STATES
    final addressController = useTextEditingController();
    final address = useState("");
    final lat = useState(0.0);
    final lng = useState(0.0);

    /// Focus node to detect when text field is focused
    final focusNode = useFocusNode();
    final sheetController = useMemoized(() => DraggableScrollableController());

    /// Listen to focus changes and animate sheet
    useEffect(() {
      void listener() {
        if (focusNode.hasFocus) {
          // Expand to full screen when focused
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (sheetController.isAttached) {
              sheetController.animateTo(
                0.95,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          });
        } else {
          // Collapse when unfocused
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (sheetController.isAttached) {
              sheetController.animateTo(
                0.4,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            }
          });
        }
      }

      focusNode.addListener(listener);
      return () => focusNode.removeListener(listener);
    }, [focusNode, sheetController]);

    return Stack(
      children: [
        /// ==== GOOGLE MAP - Fills entire screen ====
        GoogleMapWidget(lat: lat, lng: lng),

        /// ==== DRAGGABLE BOTTOM SHEET - Initially 40% ====
        DraggableScrollableSheet(
          controller: sheetController,
          initialChildSize: 0.4,
          minChildSize: 0.4,
          maxChildSize: 0.95,
          snap: true,
          snapSizes: const [0.4, 0.95],
          builder: (context, scrollController) => Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(borderRadius30),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, -2),
                )
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 8),
                Center(
                  child: Container(
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                      color: AppColors.seaGreen,
                      borderRadius: BorderRadius.circular(borderRadius12),
                    ),
                  ),
                ),
                const SizedBox(height: height8),

                /// ==== AUTOCOMPLETE SEARCH BAR INSIDE BOTTOM SHEET ====
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Material(
                    elevation: 6,
                    borderRadius: BorderRadius.circular(16),
                    child: AutocompleteTextField(
                      addressController: addressController,
                      address: address,
                      lat: lat,
                      long: lng,
                      focusNode: focusNode,
                    ),
                  ),
                ),

                const SizedBox(height: height8),

                /// ==== LIST VIEW ====
                Expanded(
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 30,
                    itemBuilder: (_, i) => ListTile(
                      title: Text("Item $i"),
                      onTap: () {
                        // When item is selected, collapse the sheet
                        focusNode.unfocus();
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
