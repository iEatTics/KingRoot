.class final Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/aom$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/aom$a",
        "<",
        "Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;",
        "Lcom/kingroot/kinguser/de;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/de;)Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/de;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 79
    new-instance v0, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;

    invoke-direct {v0, p1}, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;-><init>(Lcom/kingroot/kinguser/de;)V

    return-object v0
.end method

.method public synthetic p(Ljava/lang/Object;)Lcom/kingroot/kinguser/aom;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    check-cast p1, Lcom/kingroot/kinguser/de;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo$2;->a(Lcom/kingroot/kinguser/de;)Lcom/kingroot/kinguser/distribution/base/RecommendAppDetailInfo;

    move-result-object v0

    return-object v0
.end method
