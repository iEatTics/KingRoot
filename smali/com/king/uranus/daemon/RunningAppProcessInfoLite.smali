.class public Lcom/king/uranus/daemon/RunningAppProcessInfoLite;
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
            "Lcom/king/uranus/daemon/RunningAppProcessInfoLite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private eF:Ljava/lang/String;

.field private pid:I

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/kingroot/kinguser/nw;

    invoke-direct {v0}, Lcom/kingroot/kinguser/nw;-><init>()V

    sput-object v0, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;->pid:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;->uid:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;->eF:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/kingroot/kinguser/nw;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public fn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;->eF:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;->pid:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;->uid:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v0, p0, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v0, p0, Lcom/king/uranus/daemon/RunningAppProcessInfoLite;->eF:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    return-void
.end method
