.class public Lcom/tencent/tps/client/kr/XModFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static cache_intValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static cache_strValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public count:I

.field public featureId:I

.field public intValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public strValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public timestamp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/tencent/tps/client/kr/XModFeature;->featureId:I

    .line 10
    iput v0, p0, Lcom/tencent/tps/client/kr/XModFeature;->timestamp:I

    .line 11
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/tps/client/kr/XModFeature;->count:I

    .line 12
    iput-object v1, p0, Lcom/tencent/tps/client/kr/XModFeature;->intValues:Ljava/util/ArrayList;

    .line 13
    iput-object v1, p0, Lcom/tencent/tps/client/kr/XModFeature;->strValues:Ljava/util/ArrayList;

    .line 18
    return-void
.end method
