.class public Lcom/kingroot/common/utils/system/VTCmdResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/common/utils/system/VTCmdResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mCmdFlag:Ljava/lang/String;

.field public final mExitValue:Ljava/lang/Integer;

.field public final mStdErr:Ljava/lang/String;

.field public final mStdOut:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/kingroot/common/utils/system/VTCmdResult$1;

    invoke-direct {v0}, Lcom/kingroot/common/utils/system/VTCmdResult$1;-><init>()V

    sput-object v0, Lcom/kingroot/common/utils/system/VTCmdResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/kingroot/common/utils/system/VTCmdResult;->mExitValue:Ljava/lang/Integer;

    .line 40
    iput-object p3, p0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public success()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/kingroot/common/utils/system/VTCmdResult;->mExitValue:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/common/utils/system/VTCmdResult;->mExitValue:Ljava/lang/Integer;

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
    .line 69
    iget-object v0, p0, Lcom/kingroot/common/utils/system/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/kingroot/common/utils/system/VTCmdResult;->mExitValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-object v0, p0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdErr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return-void
.end method
