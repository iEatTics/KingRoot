package android.support.p007v7.widget.helper;

import android.graphics.Canvas;
import android.support.p004v4.view.ViewCompat;
import android.support.p007v7.recyclerview.C0219R;
import android.support.p007v7.widget.RecyclerView;
import android.view.View;
/* renamed from: android.support.v7.widget.helper.ItemTouchUIUtilImpl */
/* loaded from: classes.dex */
class ItemTouchUIUtilImpl {
    ItemTouchUIUtilImpl() {
    }

    /* renamed from: android.support.v7.widget.helper.ItemTouchUIUtilImpl$Lollipop */
    /* loaded from: classes.dex */
    static class Lollipop extends Honeycomb {
        @Override // android.support.p007v7.widget.helper.ItemTouchUIUtilImpl.Honeycomb, android.support.p007v7.widget.helper.ItemTouchUIUtil
        public void onDraw(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z) {
            if (z && view.getTag(C0219R.C0220id.item_touch_helper_previous_elevation) == null) {
                Float valueOf = Float.valueOf(ViewCompat.getElevation(view));
                ViewCompat.setElevation(view, 1.0f + findMaxElevation(recyclerView, view));
                view.setTag(C0219R.C0220id.item_touch_helper_previous_elevation, valueOf);
            }
            super.onDraw(canvas, recyclerView, view, f, f2, i, z);
        }

        private float findMaxElevation(RecyclerView recyclerView, View view) {
            int childCount = recyclerView.getChildCount();
            float f = 0.0f;
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                if (childAt != view) {
                    float elevation = ViewCompat.getElevation(childAt);
                    if (elevation > f) {
                        f = elevation;
                    }
                }
            }
            return f;
        }

        @Override // android.support.p007v7.widget.helper.ItemTouchUIUtilImpl.Honeycomb, android.support.p007v7.widget.helper.ItemTouchUIUtil
        public void clearView(View view) {
            Object tag = view.getTag(C0219R.C0220id.item_touch_helper_previous_elevation);
            if (tag != null && (tag instanceof Float)) {
                ViewCompat.setElevation(view, ((Float) tag).floatValue());
            }
            view.setTag(C0219R.C0220id.item_touch_helper_previous_elevation, null);
            super.clearView(view);
        }
    }

    /* renamed from: android.support.v7.widget.helper.ItemTouchUIUtilImpl$Honeycomb */
    /* loaded from: classes.dex */
    static class Honeycomb implements ItemTouchUIUtil {
        @Override // android.support.p007v7.widget.helper.ItemTouchUIUtil
        public void clearView(View view) {
            ViewCompat.setTranslationX(view, 0.0f);
            ViewCompat.setTranslationY(view, 0.0f);
        }

        @Override // android.support.p007v7.widget.helper.ItemTouchUIUtil
        public void onSelected(View view) {
        }

        @Override // android.support.p007v7.widget.helper.ItemTouchUIUtil
        public void onDraw(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z) {
            ViewCompat.setTranslationX(view, f);
            ViewCompat.setTranslationY(view, f2);
        }

        @Override // android.support.p007v7.widget.helper.ItemTouchUIUtil
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z) {
        }
    }

    /* renamed from: android.support.v7.widget.helper.ItemTouchUIUtilImpl$Gingerbread */
    /* loaded from: classes.dex */
    static class Gingerbread implements ItemTouchUIUtil {
        private void draw(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2) {
            canvas.save();
            canvas.translate(f, f2);
            recyclerView.drawChild(canvas, view, 0L);
            canvas.restore();
        }

        @Override // android.support.p007v7.widget.helper.ItemTouchUIUtil
        public void clearView(View view) {
            view.setVisibility(0);
        }

        @Override // android.support.p007v7.widget.helper.ItemTouchUIUtil
        public void onSelected(View view) {
            view.setVisibility(4);
        }

        @Override // android.support.p007v7.widget.helper.ItemTouchUIUtil
        public void onDraw(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z) {
            if (i != 2) {
                draw(canvas, recyclerView, view, f, f2);
            }
        }

        @Override // android.support.p007v7.widget.helper.ItemTouchUIUtil
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z) {
            if (i == 2) {
                draw(canvas, recyclerView, view, f, f2);
            }
        }
    }
}
