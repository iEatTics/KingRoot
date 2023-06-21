.class public Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/kingroot/kinguser/aom;
.implements Lcom/kingroot/kinguser/rr;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final aGp:Lcom/kingroot/kinguser/aom$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/aom$a",
            "<",
            "Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;",
            "Lcom/kingroot/kinguser/de;",
            ">;"
        }
    .end annotation
.end field

.field public static final serialVersionUID:J


# instance fields
.field public describe:Ljava/lang/String;

.field public functionDesc:Ljava/lang/String;

.field public logoUrl:Ljava/lang/String;

.field public picUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public pkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 76
    new-instance v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo$2;

    invoke-direct {v0}, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo$2;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->aGp:Lcom/kingroot/kinguser/aom$a;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->describe:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->picUrls:Ljava/util/List;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->logoUrl:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->pkgName:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->functionDesc:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->describe:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->picUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->pkgName:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->logoUrl:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->functionDesc:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/kingroot/kinguser/de;)V
    .locals 2
    .param p1    # Lcom/kingroot/kinguser/de;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->describe:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->picUrls:Ljava/util/List;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->logoUrl:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->pkgName:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->functionDesc:Ljava/lang/String;

    .line 41
    iget-object v0, p1, Lcom/kingroot/kinguser/de;->picurls:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->picUrls:Ljava/util/List;

    iget-object v1, p1, Lcom/kingroot/kinguser/de;->picurls:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    :cond_0
    iget-object v0, p1, Lcom/kingroot/kinguser/de;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->describe:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/kingroot/kinguser/de;->softkey:Lcom/kingroot/kinguser/df;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->pkgName:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/kingroot/kinguser/de;->logourl:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->logoUrl:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/kingroot/kinguser/de;->function:Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->functionDesc:Ljava/lang/String;

    .line 48
    return-void

    .line 45
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kinguser/de;->softkey:Lcom/kingroot/kinguser/df;

    iget-object v0, v0, Lcom/kingroot/kinguser/df;->softname:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 52
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
    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->describe:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->picUrls:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->logoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;->functionDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return-void
.end method
