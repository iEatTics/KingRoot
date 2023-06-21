package android.support.p004v4.widget;

import android.view.View;
import android.widget.ListView;
/* renamed from: android.support.v4.widget.ListViewCompatDonut */
/* loaded from: classes.dex */
class ListViewCompatDonut {
    ListViewCompatDonut() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void scrollListBy(ListView listView, int i) {
        View childAt;
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        if (firstVisiblePosition != -1 && (childAt = listView.getChildAt(0)) != null) {
            listView.setSelectionFromTop(firstVisiblePosition, childAt.getTop() - i);
        }
    }
}
