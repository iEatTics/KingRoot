.class Landroid/support/v4/widget/PopupWindowCompat$KitKatPopupWindowImpl;
.super Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KitKatPopupWindowImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$GingerbreadPopupWindowImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .locals 0

    .prologue
    .line 102
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/widget/PopupWindowCompatKitKat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 103
    return-void
.end method
