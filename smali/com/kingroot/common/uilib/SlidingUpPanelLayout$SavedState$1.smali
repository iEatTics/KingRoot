.class final Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;
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
        "Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bR(I)[Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;
    .locals 1

    .prologue
    .line 1536
    new-array v0, p1, [Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1528
    invoke-virtual {p0, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState$1;->r(Landroid/os/Parcel;)Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1528
    invoke-virtual {p0, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState$1;->bR(I)[Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public r(Landroid/os/Parcel;)Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;
    .locals 2

    .prologue
    .line 1531
    new-instance v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;-><init>(Landroid/os/Parcel;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$1;)V

    return-object v0
.end method
