.class public Lcom/kingroot/kinguser/ang;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/view/View;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;)Z
    .locals 8

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 23
    iget v0, p3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->appStatus:I

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v2

    .line 45
    :goto_0
    return v0

    .line 26
    :cond_1
    new-array v3, v5, [I

    .line 27
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->getLocationInWindow([I)V

    .line 28
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 32
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 33
    new-array v5, v5, [I

    .line 34
    invoke-virtual {p2, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 36
    new-instance v6, Landroid/graphics/Point;

    aget v7, v3, v2

    aget v3, v3, v1

    invoke-direct {v6, v7, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Landroid/graphics/Point;

    aget v2, v5, v2

    aget v5, v5, v1

    invoke-direct {v3, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Lcom/kingroot/kinguser/ang$1;

    invoke-direct {v2, v0, v4}, Lcom/kingroot/kinguser/ang$1;-><init>(Landroid/view/ViewGroup;Landroid/widget/ImageView;)V

    invoke-static {v4, v6, v3, v2}, Lcom/kingroot/kinguser/qb;->a(Landroid/widget/ImageView;Landroid/graphics/Point;Landroid/graphics/Point;Lcom/android/animation/Animator$AnimatorListener;)Lcom/android/animation/AnimatorSet;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/android/animation/AnimatorSet;->start()V

    move v0, v1

    .line 45
    goto :goto_0
.end method
