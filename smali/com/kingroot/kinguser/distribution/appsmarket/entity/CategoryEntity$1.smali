.class final Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;
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
        "Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public al(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity$1;->al(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;

    move-result-object v0

    return-object v0
.end method

.method public fy(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;
    .locals 1

    .prologue
    .line 98
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity$1;->fy(I)[Lcom/kingroot/kinguser/distribution/appsmarket/entity/CategoryEntity;

    move-result-object v0

    return-object v0
.end method
