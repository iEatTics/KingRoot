.class final Lcom/kingroot/kinguser/model/AppInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/model/AppInfo;
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
        "Lcom/kingroot/kinguser/model/AppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aB(Landroid/os/Parcel;)Lcom/kingroot/kinguser/model/AppInfo;
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/kingroot/kinguser/model/AppInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/model/AppInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/model/AppInfo$1;->aB(Landroid/os/Parcel;)Lcom/kingroot/kinguser/model/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public gD(I)[Lcom/kingroot/kinguser/model/AppInfo;
    .locals 1

    .prologue
    .line 124
    new-array v0, p1, [Lcom/kingroot/kinguser/model/AppInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/model/AppInfo$1;->gD(I)[Lcom/kingroot/kinguser/model/AppInfo;

    move-result-object v0

    return-object v0
.end method
