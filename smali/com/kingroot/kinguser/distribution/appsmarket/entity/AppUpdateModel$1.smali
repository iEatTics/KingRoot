.class final Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;
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
        "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aj(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;
    .locals 1

    .prologue
    .line 106
    invoke-static {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->ai(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel$1;->aj(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    move-result-object v0

    return-object v0
.end method

.method public fw(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;
    .locals 1

    .prologue
    .line 110
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel$1;->fw(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    move-result-object v0

    return-object v0
.end method
