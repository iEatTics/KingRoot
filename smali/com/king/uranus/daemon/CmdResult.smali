.class public Lcom/king/uranus/daemon/CmdResult;
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
            "Lcom/king/uranus/daemon/CmdResult;",
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
    .line 42
    new-instance v0, Lcom/kingroot/kinguser/nr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/nr;-><init>()V

    sput-object v0, Lcom/king/uranus/daemon/CmdResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/king/uranus/daemon/CmdResult;->mCmdFlag:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/king/uranus/daemon/CmdResult;->mExitValue:Ljava/lang/Integer;

    .line 24
    iput-object p3, p0, Lcom/king/uranus/daemon/CmdResult;->mStdOut:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/king/uranus/daemon/CmdResult;->mStdErr:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/king/uranus/daemon/CmdResult;->mCmdFlag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/king/uranus/daemon/CmdResult;->mExitValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-object v0, p0, Lcom/king/uranus/daemon/CmdResult;->mStdOut:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/king/uranus/daemon/CmdResult;->mStdErr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    return-void
.end method
