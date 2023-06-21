package android.support.p007v7.internal.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.p007v7.appcompat.C0189R;
import android.support.p007v7.internal.widget.AdapterViewICS;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: android.support.v7.internal.widget.SpinnerICS */
/* loaded from: classes.dex */
public class SpinnerICS extends AbsSpinnerICS implements DialogInterface.OnClickListener {
    private static final int MAX_ITEMS_MEASURED = 15;
    static final int MODE_DIALOG = 0;
    static final int MODE_DROPDOWN = 1;
    private static final int MODE_THEME = -1;
    private static final String TAG = "Spinner";
    int mDropDownWidth;
    private int mGravity;
    private SpinnerPopup mPopup;
    private DropDownAdapter mTempAdapter;
    private Rect mTempRect;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v7.internal.widget.SpinnerICS$SpinnerPopup */
    /* loaded from: classes.dex */
    public interface SpinnerPopup {
        void dismiss();

        CharSequence getHintText();

        boolean isShowing();

        void setAdapter(ListAdapter listAdapter);

        void setPromptText(CharSequence charSequence);

        void show();
    }

    SpinnerICS(Context context) {
        this(context, (AttributeSet) null);
    }

    SpinnerICS(Context context, int i) {
        this(context, null, C0189R.attr.spinnerStyle, i);
    }

    SpinnerICS(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0189R.attr.spinnerStyle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SpinnerICS(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, -1);
    }

    SpinnerICS(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.mTempRect = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0189R.styleable.Spinner, i, 0);
        switch (i2 == -1 ? obtainStyledAttributes.getInt(7, 0) : i2) {
            case 0:
                this.mPopup = new DialogPopup();
                break;
            case 1:
                DropdownPopup dropdownPopup = new DropdownPopup(context, attributeSet, i);
                this.mDropDownWidth = obtainStyledAttributes.getLayoutDimension(3, -2);
                dropdownPopup.setBackgroundDrawable(obtainStyledAttributes.getDrawable(2));
                int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(5, 0);
                if (dimensionPixelOffset != 0) {
                    dropdownPopup.setVerticalOffset(dimensionPixelOffset);
                }
                int dimensionPixelOffset2 = obtainStyledAttributes.getDimensionPixelOffset(4, 0);
                if (dimensionPixelOffset2 != 0) {
                    dropdownPopup.setHorizontalOffset(dimensionPixelOffset2);
                }
                this.mPopup = dropdownPopup;
                break;
        }
        this.mGravity = obtainStyledAttributes.getInt(0, 17);
        this.mPopup.setPromptText(obtainStyledAttributes.getString(6));
        obtainStyledAttributes.recycle();
        if (this.mTempAdapter != null) {
            this.mPopup.setAdapter(this.mTempAdapter);
            this.mTempAdapter = null;
        }
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            if ((i & 7) == 0) {
                i |= 3;
            }
            this.mGravity = i;
            requestLayout();
        }
    }

    @Override // android.support.p007v7.internal.widget.AbsSpinnerICS, android.support.p007v7.internal.widget.AdapterViewICS
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        super.setAdapter(spinnerAdapter);
        if (this.mPopup != null) {
            this.mPopup.setAdapter(new DropDownAdapter(spinnerAdapter));
        } else {
            this.mTempAdapter = new DropDownAdapter(spinnerAdapter);
        }
    }

    @Override // android.view.View
    public int getBaseline() {
        int baseline;
        View view = null;
        if (getChildCount() > 0) {
            view = getChildAt(0);
        } else if (this.mAdapter != null && this.mAdapter.getCount() > 0) {
            view = makeAndAddView(0);
            this.mRecycler.put(0, view);
            removeAllViewsInLayout();
        }
        if (view == null || (baseline = view.getBaseline()) < 0) {
            return -1;
        }
        return view.getTop() + baseline;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p007v7.internal.widget.AdapterViewICS, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mPopup != null && this.mPopup.isShowing()) {
            this.mPopup.dismiss();
        }
    }

    @Override // android.support.p007v7.internal.widget.AdapterViewICS
    public void setOnItemClickListener(AdapterViewICS.OnItemClickListener onItemClickListener) {
        throw new RuntimeException("setOnItemClickListener cannot be used with a spinner.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnItemClickListenerInt(AdapterViewICS.OnItemClickListener onItemClickListener) {
        super.setOnItemClickListener(onItemClickListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p007v7.internal.widget.AbsSpinnerICS, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mPopup != null && View.MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), measureContentWidth(getAdapter(), getBackground())), View.MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p007v7.internal.widget.AdapterViewICS, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.mInLayout = true;
        layout(0, false);
        this.mInLayout = false;
    }

    @Override // android.support.p007v7.internal.widget.AbsSpinnerICS
    void layout(int i, boolean z) {
        int i2 = this.mSpinnerPadding.left;
        int right = ((getRight() - getLeft()) - this.mSpinnerPadding.left) - this.mSpinnerPadding.right;
        if (this.mDataChanged) {
            handleDataChanged();
        }
        if (this.mItemCount == 0) {
            resetList();
            return;
        }
        if (this.mNextSelectedPosition >= 0) {
            setSelectedPositionInt(this.mNextSelectedPosition);
        }
        recycleAllViews();
        removeAllViewsInLayout();
        this.mFirstPosition = this.mSelectedPosition;
        View makeAndAddView = makeAndAddView(this.mSelectedPosition);
        int measuredWidth = makeAndAddView.getMeasuredWidth();
        switch (this.mGravity & 7) {
            case 1:
                i2 = (i2 + (right / 2)) - (measuredWidth / 2);
                break;
            case 5:
                i2 = (i2 + right) - measuredWidth;
                break;
        }
        makeAndAddView.offsetLeftAndRight(i2);
        this.mRecycler.clear();
        invalidate();
        checkSelectionChanged();
        this.mDataChanged = false;
        this.mNeedSync = false;
        setNextSelectedPositionInt(this.mSelectedPosition);
    }

    private View makeAndAddView(int i) {
        View view;
        if (!this.mDataChanged && (view = this.mRecycler.get(i)) != null) {
            setUpChild(view);
            return view;
        }
        View view2 = this.mAdapter.getView(i, null, this);
        setUpChild(view2);
        return view2;
    }

    private void setUpChild(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = generateDefaultLayoutParams();
        }
        addViewInLayout(view, 0, layoutParams);
        view.setSelected(hasFocus());
        view.measure(ViewGroup.getChildMeasureSpec(this.mWidthMeasureSpec, this.mSpinnerPadding.left + this.mSpinnerPadding.right, layoutParams.width), ViewGroup.getChildMeasureSpec(this.mHeightMeasureSpec, this.mSpinnerPadding.top + this.mSpinnerPadding.bottom, layoutParams.height));
        int measuredHeight = this.mSpinnerPadding.top + ((((getMeasuredHeight() - this.mSpinnerPadding.bottom) - this.mSpinnerPadding.top) - view.getMeasuredHeight()) / 2);
        view.layout(0, measuredHeight, view.getMeasuredWidth() + 0, view.getMeasuredHeight() + measuredHeight);
    }

    @Override // android.view.View
    public boolean performClick() {
        boolean performClick = super.performClick();
        if (!performClick) {
            performClick = true;
            if (!this.mPopup.isShowing()) {
                this.mPopup.show();
            }
        }
        return performClick;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        setSelection(i);
        dialogInterface.dismiss();
    }

    public void setPrompt(CharSequence charSequence) {
        this.mPopup.setPromptText(charSequence);
    }

    public void setPromptId(int i) {
        setPrompt(getContext().getText(i));
    }

    public CharSequence getPrompt() {
        return this.mPopup.getHintText();
    }

    int measureContentWidth(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        View view;
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        int max2 = Math.max(0, max - (15 - (min - max)));
        View view2 = null;
        int i = 0;
        int i2 = 0;
        while (max2 < min) {
            int itemViewType = spinnerAdapter.getItemViewType(max2);
            if (itemViewType != i2) {
                view = null;
            } else {
                itemViewType = i2;
                view = view2;
            }
            view2 = spinnerAdapter.getView(max2, view, this);
            if (view2.getLayoutParams() == null) {
                view2.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view2.measure(makeMeasureSpec, makeMeasureSpec2);
            i = Math.max(i, view2.getMeasuredWidth());
            max2++;
            i2 = itemViewType;
        }
        if (drawable != null) {
            drawable.getPadding(this.mTempRect);
            return this.mTempRect.left + this.mTempRect.right + i;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v7.internal.widget.SpinnerICS$DropDownAdapter */
    /* loaded from: classes.dex */
    public static class DropDownAdapter implements ListAdapter, SpinnerAdapter {
        private SpinnerAdapter mAdapter;
        private ListAdapter mListAdapter;

        public DropDownAdapter(SpinnerAdapter spinnerAdapter) {
            this.mAdapter = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.mListAdapter = (ListAdapter) spinnerAdapter;
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.mAdapter == null) {
                return 0;
            }
            return this.mAdapter.getCount();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            if (this.mAdapter == null) {
                return null;
            }
            return this.mAdapter.getItem(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            if (this.mAdapter == null) {
                return -1L;
            }
            return this.mAdapter.getItemId(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.SpinnerAdapter
        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            if (this.mAdapter == null) {
                return null;
            }
            return this.mAdapter.getDropDownView(i, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public boolean hasStableIds() {
            return this.mAdapter != null && this.mAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.mAdapter != null) {
                this.mAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.mAdapter != null) {
                this.mAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.ListAdapter
        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.mListAdapter;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.ListAdapter
        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.mListAdapter;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public int getItemViewType(int i) {
            return 0;
        }

        @Override // android.widget.Adapter
        public int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public boolean isEmpty() {
            return getCount() == 0;
        }
    }

    /* renamed from: android.support.v7.internal.widget.SpinnerICS$DialogPopup */
    /* loaded from: classes.dex */
    class DialogPopup implements DialogInterface.OnClickListener, SpinnerPopup {
        private ListAdapter mListAdapter;
        private AlertDialog mPopup;
        private CharSequence mPrompt;

        private DialogPopup() {
        }

        @Override // android.support.p007v7.internal.widget.SpinnerICS.SpinnerPopup
        public void dismiss() {
            this.mPopup.dismiss();
            this.mPopup = null;
        }

        @Override // android.support.p007v7.internal.widget.SpinnerICS.SpinnerPopup
        public boolean isShowing() {
            if (this.mPopup != null) {
                return this.mPopup.isShowing();
            }
            return false;
        }

        @Override // android.support.p007v7.internal.widget.SpinnerICS.SpinnerPopup
        public void setAdapter(ListAdapter listAdapter) {
            this.mListAdapter = listAdapter;
        }

        @Override // android.support.p007v7.internal.widget.SpinnerICS.SpinnerPopup
        public void setPromptText(CharSequence charSequence) {
            this.mPrompt = charSequence;
        }

        @Override // android.support.p007v7.internal.widget.SpinnerICS.SpinnerPopup
        public CharSequence getHintText() {
            return this.mPrompt;
        }

        @Override // android.support.p007v7.internal.widget.SpinnerICS.SpinnerPopup
        public void show() {
            AlertDialog.Builder builder = new AlertDialog.Builder(SpinnerICS.this.getContext());
            if (this.mPrompt != null) {
                builder.setTitle(this.mPrompt);
            }
            this.mPopup = builder.setSingleChoiceItems(this.mListAdapter, SpinnerICS.this.getSelectedItemPosition(), this).show();
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            SpinnerICS.this.setSelection(i);
            if (SpinnerICS.this.mOnItemClickListener != null) {
                SpinnerICS.this.performItemClick(null, i, this.mListAdapter.getItemId(i));
            }
            dismiss();
        }
    }

    /* renamed from: android.support.v7.internal.widget.SpinnerICS$DropdownPopup */
    /* loaded from: classes.dex */
    class DropdownPopup extends ListPopupWindow implements SpinnerPopup {
        private ListAdapter mAdapter;
        private CharSequence mHintText;

        public DropdownPopup(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            setAnchorView(SpinnerICS.this);
            setModal(true);
            setPromptPosition(0);
            setOnItemClickListener(new AdapterViewICS.OnItemClickListenerWrapper(new AdapterViewICS.OnItemClickListener() { // from class: android.support.v7.internal.widget.SpinnerICS.DropdownPopup.1
                @Override // android.support.p007v7.internal.widget.AdapterViewICS.OnItemClickListener
                public void onItemClick(AdapterViewICS adapterViewICS, View view, int i2, long j) {
                    SpinnerICS.this.setSelection(i2);
                    if (SpinnerICS.this.mOnItemClickListener != null) {
                        SpinnerICS.this.performItemClick(view, i2, DropdownPopup.this.mAdapter.getItemId(i2));
                    }
                    DropdownPopup.this.dismiss();
                }
            }));
        }

        @Override // android.support.p007v7.internal.widget.ListPopupWindow, android.support.p007v7.internal.widget.SpinnerICS.SpinnerPopup
        public void setAdapter(ListAdapter listAdapter) {
            super.setAdapter(listAdapter);
            this.mAdapter = listAdapter;
        }

        @Override // android.support.p007v7.internal.widget.SpinnerICS.SpinnerPopup
        public CharSequence getHintText() {
            return this.mHintText;
        }

        @Override // android.support.p007v7.internal.widget.SpinnerICS.SpinnerPopup
        public void setPromptText(CharSequence charSequence) {
            this.mHintText = charSequence;
        }

        @Override // android.support.p007v7.internal.widget.ListPopupWindow, android.support.p007v7.internal.widget.SpinnerICS.SpinnerPopup
        public void show() {
            int paddingLeft = SpinnerICS.this.getPaddingLeft();
            if (SpinnerICS.this.mDropDownWidth == -2) {
                int width = SpinnerICS.this.getWidth();
                setContentWidth(Math.max(SpinnerICS.this.measureContentWidth((SpinnerAdapter) this.mAdapter, getBackground()), (width - paddingLeft) - SpinnerICS.this.getPaddingRight()));
            } else if (SpinnerICS.this.mDropDownWidth == -1) {
                setContentWidth((SpinnerICS.this.getWidth() - paddingLeft) - SpinnerICS.this.getPaddingRight());
            } else {
                setContentWidth(SpinnerICS.this.mDropDownWidth);
            }
            Drawable background = getBackground();
            int i = 0;
            if (background != null) {
                background.getPadding(SpinnerICS.this.mTempRect);
                i = -SpinnerICS.this.mTempRect.left;
            }
            setHorizontalOffset(i + paddingLeft);
            setInputMethodMode(2);
            super.show();
            getListView().setChoiceMode(1);
            setSelection(SpinnerICS.this.getSelectedItemPosition());
        }
    }
}
