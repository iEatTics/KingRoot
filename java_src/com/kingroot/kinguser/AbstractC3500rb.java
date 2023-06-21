package com.kingroot.kinguser;

import android.support.p004v4.view.ViewCompat;
import android.support.p004v4.view.ViewPropertyAnimatorCompat;
import android.support.p004v4.view.ViewPropertyAnimatorListener;
import android.support.p007v7.widget.RecyclerView;
import android.support.p007v7.widget.SimpleItemAnimator;
import android.view.View;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.kingroot.kinguser.rb */
/* loaded from: classes.dex */
public abstract class AbstractC3500rb extends SimpleItemAnimator {
    private ArrayList<RecyclerView.ViewHolder> mPendingRemovals = new ArrayList<>();
    private ArrayList<RecyclerView.ViewHolder> mPendingAdditions = new ArrayList<>();
    private ArrayList<C3510d> mPendingMoves = new ArrayList<>();
    private ArrayList<C3507a> mPendingChanges = new ArrayList<>();
    private ArrayList<ArrayList<RecyclerView.ViewHolder>> mAdditionsList = new ArrayList<>();
    private ArrayList<ArrayList<C3510d>> mMovesList = new ArrayList<>();
    private ArrayList<ArrayList<C3507a>> mChangesList = new ArrayList<>();
    protected ArrayList<RecyclerView.ViewHolder> mAddAnimations = new ArrayList<>();
    private ArrayList<RecyclerView.ViewHolder> mMoveAnimations = new ArrayList<>();
    protected ArrayList<RecyclerView.ViewHolder> mRemoveAnimations = new ArrayList<>();
    private ArrayList<RecyclerView.ViewHolder> mChangeAnimations = new ArrayList<>();
    protected Interpolator mInterpolator = new LinearInterpolator();

    protected abstract void animateAddImpl(RecyclerView.ViewHolder viewHolder);

    protected abstract void animateRemoveImpl(RecyclerView.ViewHolder viewHolder);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.rb$d */
    /* loaded from: classes.dex */
    public static class C3510d {
        public int fromX;
        public int fromY;
        public RecyclerView.ViewHolder holder;
        public int toX;
        public int toY;

        private C3510d(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
            this.holder = viewHolder;
            this.fromX = i;
            this.fromY = i2;
            this.toX = i3;
            this.toY = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.rb$a */
    /* loaded from: classes.dex */
    public static class C3507a {
        public int fromX;
        public int fromY;
        public RecyclerView.ViewHolder newHolder;
        public RecyclerView.ViewHolder oldHolder;
        public int toX;
        public int toY;

        private C3507a(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            this.oldHolder = viewHolder;
            this.newHolder = viewHolder2;
        }

        private C3507a(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4) {
            this(viewHolder, viewHolder2);
            this.fromX = i;
            this.fromY = i2;
            this.toX = i3;
            this.toY = i4;
        }

        public String toString() {
            return "ChangeInfo{oldHolder=" + this.oldHolder + ", newHolder=" + this.newHolder + ", fromX=" + this.fromX + ", fromY=" + this.fromY + ", toX=" + this.toX + ", toY=" + this.toY + '}';
        }
    }

    public AbstractC3500rb() {
        setSupportsChangeAnimations(false);
    }

    @Override // android.support.p007v7.widget.RecyclerView.ItemAnimator
    public void runPendingAnimations() {
        boolean z = !this.mPendingRemovals.isEmpty();
        boolean z2 = !this.mPendingMoves.isEmpty();
        boolean z3 = !this.mPendingChanges.isEmpty();
        boolean z4 = !this.mPendingAdditions.isEmpty();
        if (z || z2 || z4 || z3) {
            Iterator<RecyclerView.ViewHolder> it = this.mPendingRemovals.iterator();
            while (it.hasNext()) {
                m2497e(it.next());
            }
            this.mPendingRemovals.clear();
            if (z2) {
                final ArrayList<C3510d> arrayList = new ArrayList<>();
                arrayList.addAll(this.mPendingMoves);
                this.mMovesList.add(arrayList);
                this.mPendingMoves.clear();
                Runnable runnable = new Runnable() { // from class: com.kingroot.kinguser.rb.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            C3510d c3510d = (C3510d) it2.next();
                            AbstractC3500rb.this.animateMoveImpl(c3510d.holder, c3510d.fromX, c3510d.fromY, c3510d.toX, c3510d.toY);
                        }
                        arrayList.clear();
                        AbstractC3500rb.this.mMovesList.remove(arrayList);
                    }
                };
                if (z) {
                    ViewCompat.postOnAnimationDelayed(arrayList.get(0).holder.itemView, runnable, getRemoveDuration());
                } else {
                    runnable.run();
                }
            }
            if (z3) {
                final ArrayList<C3507a> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.mPendingChanges);
                this.mChangesList.add(arrayList2);
                this.mPendingChanges.clear();
                Runnable runnable2 = new Runnable() { // from class: com.kingroot.kinguser.rb.2
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList2.iterator();
                        while (it2.hasNext()) {
                            AbstractC3500rb.this.m2509a((C3507a) it2.next());
                        }
                        arrayList2.clear();
                        AbstractC3500rb.this.mChangesList.remove(arrayList2);
                    }
                };
                if (z) {
                    ViewCompat.postOnAnimationDelayed(arrayList2.get(0).oldHolder.itemView, runnable2, getRemoveDuration());
                } else {
                    runnable2.run();
                }
            }
            if (z4) {
                final ArrayList<RecyclerView.ViewHolder> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.mPendingAdditions);
                this.mAdditionsList.add(arrayList3);
                this.mPendingAdditions.clear();
                Runnable runnable3 = new Runnable() { // from class: com.kingroot.kinguser.rb.3
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator it2 = arrayList3.iterator();
                        while (it2.hasNext()) {
                            AbstractC3500rb.this.m2495f((RecyclerView.ViewHolder) it2.next());
                        }
                        arrayList3.clear();
                        AbstractC3500rb.this.mAdditionsList.remove(arrayList3);
                    }
                };
                if (z || z2 || z3) {
                    ViewCompat.postOnAnimationDelayed(arrayList3.get(0).itemView, runnable3, (z ? getRemoveDuration() : 0L) + Math.max(z2 ? getMoveDuration() : 0L, z3 ? getChangeDuration() : 0L));
                } else {
                    runnable3.run();
                }
            }
        }
    }

    /* renamed from: a */
    protected void m2510a(RecyclerView.ViewHolder viewHolder) {
    }

    /* renamed from: b */
    protected void mo2491b(RecyclerView.ViewHolder viewHolder) {
    }

    /* renamed from: c */
    private void m2501c(RecyclerView.ViewHolder viewHolder) {
        C3513rd.m2490e(viewHolder.itemView);
        if (viewHolder instanceof AbstractC3499ra) {
            ((AbstractC3499ra) viewHolder).m2511hH();
        } else {
            m2510a(viewHolder);
        }
    }

    /* renamed from: d */
    private void m2499d(RecyclerView.ViewHolder viewHolder) {
        C3513rd.m2490e(viewHolder.itemView);
        if (viewHolder instanceof AbstractC3499ra) {
            ((AbstractC3499ra) viewHolder).m2512hG();
        } else {
            mo2491b(viewHolder);
        }
    }

    /* renamed from: e */
    private void m2497e(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder instanceof AbstractC3499ra) {
            ((AbstractC3499ra) viewHolder).m2513b(new C3509c(viewHolder));
        } else {
            animateRemoveImpl(viewHolder);
        }
        this.mRemoveAnimations.add(viewHolder);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m2495f(RecyclerView.ViewHolder viewHolder) {
        if (viewHolder instanceof AbstractC3499ra) {
            ((AbstractC3499ra) viewHolder).m2514a(new C3508b(viewHolder));
        } else {
            animateAddImpl(viewHolder);
        }
        this.mAddAnimations.add(viewHolder);
    }

    @Override // android.support.p007v7.widget.SimpleItemAnimator
    public boolean animateRemove(RecyclerView.ViewHolder viewHolder) {
        endAnimation(viewHolder);
        m2501c(viewHolder);
        this.mPendingRemovals.add(viewHolder);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: g */
    public long m2493g(RecyclerView.ViewHolder viewHolder) {
        return Math.abs((viewHolder.getOldPosition() * getRemoveDuration()) / 4);
    }

    @Override // android.support.p007v7.widget.SimpleItemAnimator
    public boolean animateAdd(RecyclerView.ViewHolder viewHolder) {
        endAnimation(viewHolder);
        m2499d(viewHolder);
        this.mPendingAdditions.add(viewHolder);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public long m2492h(RecyclerView.ViewHolder viewHolder) {
        return Math.abs((viewHolder.getAdapterPosition() * getAddDuration()) / 4);
    }

    @Override // android.support.p007v7.widget.SimpleItemAnimator
    public boolean animateMove(RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
        View view = viewHolder.itemView;
        int translationX = (int) (i + ViewCompat.getTranslationX(viewHolder.itemView));
        int translationY = (int) (i2 + ViewCompat.getTranslationY(viewHolder.itemView));
        endAnimation(viewHolder);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            dispatchMoveFinished(viewHolder);
            return false;
        }
        if (i5 != 0) {
            ViewCompat.setTranslationX(view, -i5);
        }
        if (i6 != 0) {
            ViewCompat.setTranslationY(view, -i6);
        }
        this.mPendingMoves.add(new C3510d(viewHolder, translationX, translationY, i3, i4));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateMoveImpl(final RecyclerView.ViewHolder viewHolder, int i, int i2, int i3, int i4) {
        View view = viewHolder.itemView;
        final int i5 = i3 - i;
        final int i6 = i4 - i2;
        if (i5 != 0) {
            ViewCompat.animate(view).translationX(0.0f);
        }
        if (i6 != 0) {
            ViewCompat.animate(view).translationY(0.0f);
        }
        this.mMoveAnimations.add(viewHolder);
        final ViewPropertyAnimatorCompat animate = ViewCompat.animate(view);
        animate.setDuration(getMoveDuration()).setListener(new C3511e() { // from class: com.kingroot.kinguser.rb.4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super();
            }

            @Override // com.kingroot.kinguser.AbstractC3500rb.C3511e, android.support.p004v4.view.ViewPropertyAnimatorListener
            public void onAnimationStart(View view2) {
                AbstractC3500rb.this.dispatchMoveStarting(viewHolder);
            }

            @Override // com.kingroot.kinguser.AbstractC3500rb.C3511e, android.support.p004v4.view.ViewPropertyAnimatorListener
            public void onAnimationCancel(View view2) {
                if (i5 != 0) {
                    ViewCompat.setTranslationX(view2, 0.0f);
                }
                if (i6 != 0) {
                    ViewCompat.setTranslationY(view2, 0.0f);
                }
            }

            @Override // com.kingroot.kinguser.AbstractC3500rb.C3511e, android.support.p004v4.view.ViewPropertyAnimatorListener
            public void onAnimationEnd(View view2) {
                animate.setListener(null);
                AbstractC3500rb.this.dispatchMoveFinished(viewHolder);
                AbstractC3500rb.this.mMoveAnimations.remove(viewHolder);
                AbstractC3500rb.this.dispatchFinishedWhenDone();
            }
        }).start();
    }

    @Override // android.support.p007v7.widget.SimpleItemAnimator
    public boolean animateChange(RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2, int i, int i2, int i3, int i4) {
        float translationX = ViewCompat.getTranslationX(viewHolder.itemView);
        float translationY = ViewCompat.getTranslationY(viewHolder.itemView);
        float alpha = ViewCompat.getAlpha(viewHolder.itemView);
        endAnimation(viewHolder);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        ViewCompat.setTranslationX(viewHolder.itemView, translationX);
        ViewCompat.setTranslationY(viewHolder.itemView, translationY);
        ViewCompat.setAlpha(viewHolder.itemView, alpha);
        if (viewHolder2 != null && viewHolder2.itemView != null) {
            endAnimation(viewHolder2);
            ViewCompat.setTranslationX(viewHolder2.itemView, -i5);
            ViewCompat.setTranslationY(viewHolder2.itemView, -i6);
            ViewCompat.setAlpha(viewHolder2.itemView, 0.0f);
        }
        this.mPendingChanges.add(new C3507a(viewHolder, viewHolder2, i, i2, i3, i4));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m2509a(final C3507a c3507a) {
        RecyclerView.ViewHolder viewHolder = c3507a.oldHolder;
        View view = viewHolder == null ? null : viewHolder.itemView;
        RecyclerView.ViewHolder viewHolder2 = c3507a.newHolder;
        final View view2 = viewHolder2 != null ? viewHolder2.itemView : null;
        if (view != null) {
            this.mChangeAnimations.add(c3507a.oldHolder);
            final ViewPropertyAnimatorCompat duration = ViewCompat.animate(view).setDuration(getChangeDuration());
            duration.translationX(c3507a.toX - c3507a.fromX);
            duration.translationY(c3507a.toY - c3507a.fromY);
            duration.alpha(0.0f).setListener(new C3511e() { // from class: com.kingroot.kinguser.rb.5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.kingroot.kinguser.AbstractC3500rb.C3511e, android.support.p004v4.view.ViewPropertyAnimatorListener
                public void onAnimationStart(View view3) {
                    AbstractC3500rb.this.dispatchChangeStarting(c3507a.oldHolder, true);
                }

                @Override // com.kingroot.kinguser.AbstractC3500rb.C3511e, android.support.p004v4.view.ViewPropertyAnimatorListener
                public void onAnimationEnd(View view3) {
                    duration.setListener(null);
                    ViewCompat.setAlpha(view3, 1.0f);
                    ViewCompat.setTranslationX(view3, 0.0f);
                    ViewCompat.setTranslationY(view3, 0.0f);
                    AbstractC3500rb.this.dispatchChangeFinished(c3507a.oldHolder, true);
                    AbstractC3500rb.this.mChangeAnimations.remove(c3507a.oldHolder);
                    AbstractC3500rb.this.dispatchFinishedWhenDone();
                }
            }).start();
        }
        if (view2 != null) {
            this.mChangeAnimations.add(c3507a.newHolder);
            final ViewPropertyAnimatorCompat animate = ViewCompat.animate(view2);
            animate.translationX(0.0f).translationY(0.0f).setDuration(getChangeDuration()).alpha(1.0f).setListener(new C3511e() { // from class: com.kingroot.kinguser.rb.6
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.kingroot.kinguser.AbstractC3500rb.C3511e, android.support.p004v4.view.ViewPropertyAnimatorListener
                public void onAnimationStart(View view3) {
                    AbstractC3500rb.this.dispatchChangeStarting(c3507a.newHolder, false);
                }

                @Override // com.kingroot.kinguser.AbstractC3500rb.C3511e, android.support.p004v4.view.ViewPropertyAnimatorListener
                public void onAnimationEnd(View view3) {
                    animate.setListener(null);
                    ViewCompat.setAlpha(view2, 1.0f);
                    ViewCompat.setTranslationX(view2, 0.0f);
                    ViewCompat.setTranslationY(view2, 0.0f);
                    AbstractC3500rb.this.dispatchChangeFinished(c3507a.newHolder, false);
                    AbstractC3500rb.this.mChangeAnimations.remove(c3507a.newHolder);
                    AbstractC3500rb.this.dispatchFinishedWhenDone();
                }
            }).start();
        }
    }

    private void endChangeAnimation(List<C3507a> list, RecyclerView.ViewHolder viewHolder) {
        for (int size = list.size() - 1; size >= 0; size--) {
            C3507a c3507a = list.get(size);
            if (m2508a(c3507a, viewHolder) && c3507a.oldHolder == null && c3507a.newHolder == null) {
                list.remove(c3507a);
            }
        }
    }

    /* renamed from: b */
    private void m2503b(C3507a c3507a) {
        if (c3507a.oldHolder != null) {
            m2508a(c3507a, c3507a.oldHolder);
        }
        if (c3507a.newHolder != null) {
            m2508a(c3507a, c3507a.newHolder);
        }
    }

    /* renamed from: a */
    private boolean m2508a(C3507a c3507a, RecyclerView.ViewHolder viewHolder) {
        boolean z = false;
        if (c3507a.newHolder == viewHolder) {
            c3507a.newHolder = null;
        } else if (c3507a.oldHolder != viewHolder) {
            return false;
        } else {
            c3507a.oldHolder = null;
            z = true;
        }
        ViewCompat.setAlpha(viewHolder.itemView, 1.0f);
        ViewCompat.setTranslationX(viewHolder.itemView, 0.0f);
        ViewCompat.setTranslationY(viewHolder.itemView, 0.0f);
        dispatchChangeFinished(viewHolder, z);
        return true;
    }

    @Override // android.support.p007v7.widget.RecyclerView.ItemAnimator
    public void endAnimation(RecyclerView.ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        ViewCompat.animate(view).cancel();
        for (int size = this.mPendingMoves.size() - 1; size >= 0; size--) {
            if (this.mPendingMoves.get(size).holder == viewHolder) {
                ViewCompat.setTranslationY(view, 0.0f);
                ViewCompat.setTranslationX(view, 0.0f);
                dispatchMoveFinished(viewHolder);
                this.mPendingMoves.remove(size);
            }
        }
        endChangeAnimation(this.mPendingChanges, viewHolder);
        if (this.mPendingRemovals.remove(viewHolder)) {
            C3513rd.m2490e(viewHolder.itemView);
            dispatchRemoveFinished(viewHolder);
        }
        if (this.mPendingAdditions.remove(viewHolder)) {
            C3513rd.m2490e(viewHolder.itemView);
            dispatchAddFinished(viewHolder);
        }
        for (int size2 = this.mChangesList.size() - 1; size2 >= 0; size2--) {
            ArrayList<C3507a> arrayList = this.mChangesList.get(size2);
            endChangeAnimation(arrayList, viewHolder);
            if (arrayList.isEmpty()) {
                this.mChangesList.remove(size2);
            }
        }
        for (int size3 = this.mMovesList.size() - 1; size3 >= 0; size3--) {
            ArrayList<C3510d> arrayList2 = this.mMovesList.get(size3);
            int size4 = arrayList2.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                } else if (arrayList2.get(size4).holder != viewHolder) {
                    size4--;
                } else {
                    ViewCompat.setTranslationY(view, 0.0f);
                    ViewCompat.setTranslationX(view, 0.0f);
                    dispatchMoveFinished(viewHolder);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.mMovesList.remove(size3);
                    }
                }
            }
        }
        for (int size5 = this.mAdditionsList.size() - 1; size5 >= 0; size5--) {
            ArrayList<RecyclerView.ViewHolder> arrayList3 = this.mAdditionsList.get(size5);
            if (arrayList3.remove(viewHolder)) {
                C3513rd.m2490e(viewHolder.itemView);
                dispatchAddFinished(viewHolder);
                if (arrayList3.isEmpty()) {
                    this.mAdditionsList.remove(size5);
                }
            }
        }
        if (this.mRemoveAnimations.remove(viewHolder)) {
        }
        if (this.mAddAnimations.remove(viewHolder)) {
        }
        if (this.mChangeAnimations.remove(viewHolder)) {
        }
        if (this.mMoveAnimations.remove(viewHolder)) {
        }
        dispatchFinishedWhenDone();
    }

    @Override // android.support.p007v7.widget.RecyclerView.ItemAnimator
    public boolean isRunning() {
        return (this.mPendingAdditions.isEmpty() && this.mPendingChanges.isEmpty() && this.mPendingMoves.isEmpty() && this.mPendingRemovals.isEmpty() && this.mMoveAnimations.isEmpty() && this.mRemoveAnimations.isEmpty() && this.mAddAnimations.isEmpty() && this.mChangeAnimations.isEmpty() && this.mMovesList.isEmpty() && this.mAdditionsList.isEmpty() && this.mChangesList.isEmpty()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchFinishedWhenDone() {
        if (!isRunning()) {
            dispatchAnimationsFinished();
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.ItemAnimator
    public void endAnimations() {
        for (int size = this.mPendingMoves.size() - 1; size >= 0; size--) {
            C3510d c3510d = this.mPendingMoves.get(size);
            View view = c3510d.holder.itemView;
            ViewCompat.setTranslationY(view, 0.0f);
            ViewCompat.setTranslationX(view, 0.0f);
            dispatchMoveFinished(c3510d.holder);
            this.mPendingMoves.remove(size);
        }
        for (int size2 = this.mPendingRemovals.size() - 1; size2 >= 0; size2--) {
            dispatchRemoveFinished(this.mPendingRemovals.get(size2));
            this.mPendingRemovals.remove(size2);
        }
        for (int size3 = this.mPendingAdditions.size() - 1; size3 >= 0; size3--) {
            RecyclerView.ViewHolder viewHolder = this.mPendingAdditions.get(size3);
            C3513rd.m2490e(viewHolder.itemView);
            dispatchAddFinished(viewHolder);
            this.mPendingAdditions.remove(size3);
        }
        for (int size4 = this.mPendingChanges.size() - 1; size4 >= 0; size4--) {
            m2503b(this.mPendingChanges.get(size4));
        }
        this.mPendingChanges.clear();
        if (isRunning()) {
            for (int size5 = this.mMovesList.size() - 1; size5 >= 0; size5--) {
                ArrayList<C3510d> arrayList = this.mMovesList.get(size5);
                for (int size6 = arrayList.size() - 1; size6 >= 0; size6--) {
                    C3510d c3510d2 = arrayList.get(size6);
                    View view2 = c3510d2.holder.itemView;
                    ViewCompat.setTranslationY(view2, 0.0f);
                    ViewCompat.setTranslationX(view2, 0.0f);
                    dispatchMoveFinished(c3510d2.holder);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.mMovesList.remove(arrayList);
                    }
                }
            }
            for (int size7 = this.mAdditionsList.size() - 1; size7 >= 0; size7--) {
                ArrayList<RecyclerView.ViewHolder> arrayList2 = this.mAdditionsList.get(size7);
                for (int size8 = arrayList2.size() - 1; size8 >= 0; size8--) {
                    RecyclerView.ViewHolder viewHolder2 = arrayList2.get(size8);
                    ViewCompat.setAlpha(viewHolder2.itemView, 1.0f);
                    dispatchAddFinished(viewHolder2);
                    if (size8 < arrayList2.size()) {
                        arrayList2.remove(size8);
                    }
                    if (arrayList2.isEmpty()) {
                        this.mAdditionsList.remove(arrayList2);
                    }
                }
            }
            for (int size9 = this.mChangesList.size() - 1; size9 >= 0; size9--) {
                ArrayList<C3507a> arrayList3 = this.mChangesList.get(size9);
                for (int size10 = arrayList3.size() - 1; size10 >= 0; size10--) {
                    m2503b(arrayList3.get(size10));
                    if (arrayList3.isEmpty()) {
                        this.mChangesList.remove(arrayList3);
                    }
                }
            }
            cancelAll(this.mRemoveAnimations);
            cancelAll(this.mMoveAnimations);
            cancelAll(this.mAddAnimations);
            cancelAll(this.mChangeAnimations);
            dispatchAnimationsFinished();
        }
    }

    void cancelAll(List<RecyclerView.ViewHolder> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            ViewCompat.animate(list.get(size).itemView).cancel();
        }
    }

    /* renamed from: com.kingroot.kinguser.rb$e */
    /* loaded from: classes.dex */
    static class C3511e implements ViewPropertyAnimatorListener {
        private C3511e() {
        }

        @Override // android.support.p004v4.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
        }

        @Override // android.support.p004v4.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
        }

        @Override // android.support.p004v4.view.ViewPropertyAnimatorListener
        public void onAnimationCancel(View view) {
        }
    }

    /* renamed from: com.kingroot.kinguser.rb$b */
    /* loaded from: classes.dex */
    public class C3508b extends C3511e {
        RecyclerView.ViewHolder mViewHolder;

        public C3508b(RecyclerView.ViewHolder viewHolder) {
            super();
            this.mViewHolder = viewHolder;
        }

        @Override // com.kingroot.kinguser.AbstractC3500rb.C3511e, android.support.p004v4.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            AbstractC3500rb.this.dispatchAddStarting(this.mViewHolder);
        }

        @Override // com.kingroot.kinguser.AbstractC3500rb.C3511e, android.support.p004v4.view.ViewPropertyAnimatorListener
        public void onAnimationCancel(View view) {
            C3513rd.m2490e(view);
        }

        @Override // com.kingroot.kinguser.AbstractC3500rb.C3511e, android.support.p004v4.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            C3513rd.m2490e(view);
            AbstractC3500rb.this.dispatchAddFinished(this.mViewHolder);
            AbstractC3500rb.this.mAddAnimations.remove(this.mViewHolder);
            AbstractC3500rb.this.dispatchFinishedWhenDone();
        }
    }

    /* renamed from: com.kingroot.kinguser.rb$c */
    /* loaded from: classes.dex */
    public class C3509c extends C3511e {
        RecyclerView.ViewHolder mViewHolder;

        public C3509c(RecyclerView.ViewHolder viewHolder) {
            super();
            this.mViewHolder = viewHolder;
        }

        @Override // com.kingroot.kinguser.AbstractC3500rb.C3511e, android.support.p004v4.view.ViewPropertyAnimatorListener
        public void onAnimationStart(View view) {
            AbstractC3500rb.this.dispatchRemoveStarting(this.mViewHolder);
        }

        @Override // com.kingroot.kinguser.AbstractC3500rb.C3511e, android.support.p004v4.view.ViewPropertyAnimatorListener
        public void onAnimationCancel(View view) {
            C3513rd.m2490e(view);
        }

        @Override // com.kingroot.kinguser.AbstractC3500rb.C3511e, android.support.p004v4.view.ViewPropertyAnimatorListener
        public void onAnimationEnd(View view) {
            C3513rd.m2490e(view);
            AbstractC3500rb.this.dispatchRemoveFinished(this.mViewHolder);
            AbstractC3500rb.this.mRemoveAnimations.remove(this.mViewHolder);
            AbstractC3500rb.this.dispatchFinishedWhenDone();
        }
    }
}
