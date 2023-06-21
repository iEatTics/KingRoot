.class final Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;
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
        "Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ap(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo$1;->ap(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public fC(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;
    .locals 1

    .prologue
    .line 111
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo$1;->fC(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/LocalAppInfo;

    move-result-object v0

    return-object v0
.end method
