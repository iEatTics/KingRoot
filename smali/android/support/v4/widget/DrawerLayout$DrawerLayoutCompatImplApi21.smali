.class Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawerLayoutCompatImplApi21"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 336
    invoke-static {p1, p2, p3}, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    .line 337
    return-void
.end method

.method public configureApplyInsets(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 328
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->configureApplyInsets(Landroid/view/View;)V

    .line 329
    return-void
.end method

.method public dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 332
    invoke-static {p1, p2, p3}, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    .line 333
    return-void
.end method

.method public getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 345
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTopInset(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 340
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->getTopInset(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
