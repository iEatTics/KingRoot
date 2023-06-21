.class Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/uilib/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1527
    new-instance v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState$1;

    invoke-direct {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 1511
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1512
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1514
    if-eqz v0, :cond_0

    :try_start_0
    const-class v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    :goto_0
    iput-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 1519
    :goto_1
    return-void

    .line 1514
    :cond_0
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1516
    :catch_0
    move-exception v0

    .line 1517
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    iput-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingroot/common/uilib/SlidingUpPanelLayout$1;)V
    .locals 0

    .prologue
    .line 1503
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 1507
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1508
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1523
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1524
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1525
    return-void

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$SavedState;->RS:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-virtual {v0}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
