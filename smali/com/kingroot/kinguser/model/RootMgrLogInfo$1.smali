.class final Lcom/kingroot/kinguser/model/RootMgrLogInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/model/RootMgrLogInfo;
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
        "Lcom/kingroot/kinguser/model/RootMgrLogInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aE(Landroid/os/Parcel;)Lcom/kingroot/kinguser/model/RootMgrLogInfo;
    .locals 10

    .prologue
    .line 64
    new-instance v1, Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-direct/range {v1 .. v9}, Lcom/kingroot/kinguser/model/RootMgrLogInfo;-><init>(JJLjava/lang/String;Ljava/lang/String;II)V

    .line 64
    return-object v1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/model/RootMgrLogInfo$1;->aE(Landroid/os/Parcel;)Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    move-result-object v0

    return-object v0
.end method

.method public gH(I)[Lcom/kingroot/kinguser/model/RootMgrLogInfo;
    .locals 1

    .prologue
    .line 75
    new-array v0, p1, [Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/model/RootMgrLogInfo$1;->gH(I)[Lcom/kingroot/kinguser/model/RootMgrLogInfo;

    move-result-object v0

    return-object v0
.end method
