.class Landroid/support/v4/view/MotionEventCompat$GingerbreadMotionEventVersionImpl;
.super Landroid/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GingerbreadMotionEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getSource(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 134
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompatGingerbread;->getSource(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method
