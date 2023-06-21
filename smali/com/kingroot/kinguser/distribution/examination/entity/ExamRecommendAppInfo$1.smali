.class final Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;
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
        "Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public av(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo$1;->av(Landroid/os/Parcel;)Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public fR(I)[Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;
    .locals 1

    .prologue
    .line 182
    new-array v0, p1, [Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo$1;->fR(I)[Lcom/kingroot/kinguser/distribution/examination/entity/ExamRecommendAppInfo;

    move-result-object v0

    return-object v0
.end method
