.class final Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
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
        "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public W(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
    .locals 1

    .prologue
    .line 307
    invoke-static {p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->V(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$1;->W(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v0

    return-object v0
.end method

.method public fo(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
    .locals 1

    .prologue
    .line 311
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$1;->fo(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    move-result-object v0

    return-object v0
.end method
