.class public Lcom/kingroot/common/utils/system/KmVTCmdResult;
.super Lcom/kingroot/common/utils/system/VTCmdResult;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/common/utils/system/KmVTCmdResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/kingroot/common/utils/system/KmVTCmdResult$1;

    invoke-direct {v0}, Lcom/kingroot/common/utils/system/KmVTCmdResult$1;-><init>()V

    sput-object v0, Lcom/kingroot/common/utils/system/KmVTCmdResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/kingroot/common/utils/system/VTCmdResult;)V
    .locals 4

    .prologue
    .line 27
    iget-object v0, p1, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    iget-object v1, p1, Lcom/kingroot/common/utils/system/VTCmdResult;->mExitValue:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    iget-object v3, p1, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/kingroot/common/utils/system/KmVTCmdResult;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kingroot/common/utils/system/VTCmdResult;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public success()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/kingroot/common/utils/system/KmVTCmdResult;->mExitValue:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/utils/system/KmVTCmdResult;->mExitValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kingroot/common/utils/system/KmVTCmdResult;->mCmdFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/kingroot/common/utils/system/KmVTCmdResult;->mExitValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v0, p0, Lcom/kingroot/common/utils/system/KmVTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/kingroot/common/utils/system/KmVTCmdResult;->mStdErr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return-void
.end method
