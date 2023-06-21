.class public Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;
.super Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ame;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Landroid/os/Parcel;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    .line 30
    return-void
.end method

.method public static aa(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDetailRecommendModel;-><init>(Landroid/os/Parcel;)V

    .line 21
    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x3

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 42
    return-void
.end method
