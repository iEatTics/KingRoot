.class Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingcore/uilib/ProgressWhell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WheelSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field BA:I

.field BE:F

.field BG:Z

.field BH:F

.field BI:F

.field BJ:Z

.field Bq:I

.field Br:I

.field Bs:I

.field Bt:Z

.field Bz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 654
    new-instance v0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState$1;

    invoke-direct {v0}, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState$1;-><init>()V

    sput-object v0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 681
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 682
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BH:F

    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BI:F

    .line 684
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BJ:Z

    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BE:F

    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Br:I

    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Bz:I

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Bs:I

    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BA:I

    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Bq:I

    .line 691
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BG:Z

    .line 692
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Bt:Z

    .line 693
    return-void

    :cond_0
    move v0, v2

    .line 684
    goto :goto_0

    :cond_1
    move v0, v2

    .line 691
    goto :goto_1

    :cond_2
    move v1, v2

    .line 692
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingcore/uilib/ProgressWhell$1;)V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .prologue
    .line 677
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 678
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 696
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 697
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BH:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 698
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BI:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 699
    iget-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BJ:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 700
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BE:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 701
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Br:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Bz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 703
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Bs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BA:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 705
    iget v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Bq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    iget-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->BG:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 707
    iget-boolean v0, p0, Lcom/kingcore/uilib/ProgressWhell$WheelSavedState;->Bt:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 708
    return-void

    :cond_0
    move v0, v2

    .line 699
    goto :goto_0

    :cond_1
    move v0, v2

    .line 706
    goto :goto_1

    :cond_2
    move v1, v2

    .line 707
    goto :goto_2
.end method
