.class public Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;
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
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Landroid/os/Parcel;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;-><init>(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)V

    .line 33
    return-void
.end method

.method public static ae(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownloadRecommendModel;-><init>(Landroid/os/Parcel;)V

    .line 24
    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x2

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 45
    return-void
.end method
