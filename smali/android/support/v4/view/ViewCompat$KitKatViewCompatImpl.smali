.class Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KitKatViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1549
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$JbMr2ViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 1552
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatKitKat;->getAccessibilityLiveRegion(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1577
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatKitKat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isLaidOut(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1567
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatKitKat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isLayoutDirectionResolved(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 1572
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatKitKat;->isLayoutDirectionResolved(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1557
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatKitKat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 1558
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1562
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatJB;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1563
    return-void
.end method
