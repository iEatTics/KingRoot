.class final Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;
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
        "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Z(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;
    .locals 1

    .prologue
    .line 135
    invoke-static {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;->Y(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel$1;->Z(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    move-result-object v0

    return-object v0
.end method

.method public fq(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;
    .locals 1

    .prologue
    .line 139
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel$1;->fq(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailModel;

    move-result-object v0

    return-object v0
.end method
