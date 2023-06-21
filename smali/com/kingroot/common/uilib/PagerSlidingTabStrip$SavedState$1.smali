.class final Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bN(I)[Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState;
    .locals 1

    .prologue
    .line 609
    new-array v0, p1, [Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState$1;->q(Landroid/os/Parcel;)Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState$1;->bN(I)[Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public q(Landroid/os/Parcel;)Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState;
    .locals 2

    .prologue
    .line 604
    new-instance v0, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kingroot/common/uilib/PagerSlidingTabStrip$SavedState;-><init>(Landroid/os/Parcel;Lcom/kingroot/common/uilib/PagerSlidingTabStrip$1;)V

    return-object v0
.end method
