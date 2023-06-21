.class public Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/kingroot/kinguser/rr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BottomPic"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# instance fields
.field public miniUrl:Ljava/lang/String;

.field public rawUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 354
    new-instance v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;->rawUrl:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;->miniUrl:Ljava/lang/String;

    .line 336
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;->rawUrl:Ljava/lang/String;

    .line 340
    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;->miniUrl:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public static a(Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 368
    iget-object v0, p0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo;->mSnaShotPicList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->e(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$BottomPic;

    .line 369
    new-instance v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;

    iget-object v4, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$BottomPic;->rawUrl:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/seachsdk/common/AppInfo$BottomPic;->miniUrl:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    :cond_0
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 350
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;->rawUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel$BottomPic;->miniUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    return-void
.end method
