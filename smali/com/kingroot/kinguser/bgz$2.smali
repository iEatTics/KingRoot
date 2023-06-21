.class Lcom/kingroot/kinguser/bgz$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bgz;->f(Lcom/tencent/qqpim/discovery/AdDisplayModel;)Lcom/kingroot/kinguser/ad/SplashDisplayModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingroot/kinguser/ad/SplashDisplayModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bpl:Lcom/kingroot/kinguser/bgz;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bgz;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/kingroot/kinguser/bgz$2;->bpl:Lcom/kingroot/kinguser/bgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ad/SplashDisplayModel;Lcom/kingroot/kinguser/ad/SplashDisplayModel;)I
    .locals 2

    .prologue
    .line 94
    iget v0, p1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->aju:I

    iget v1, p2, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->aju:I

    if-eq v0, v1, :cond_0

    .line 95
    iget v0, p1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->aju:I

    iget v1, p2, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->aju:I

    sub-int/2addr v0, v1

    .line 108
    :goto_0
    return v0

    .line 98
    :cond_0
    iget v0, p1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->type:I

    iget v1, p2, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->type:I

    if-ne v0, v1, :cond_2

    .line 99
    iget v0, p1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 101
    iget v0, p1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->priority:I

    iget v1, p2, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->priority:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajw:Lcom/tencent/qqpim/discovery/AdDisplayModel;

    iget v0, v0, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJp:I

    iget-object v1, p2, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajw:Lcom/tencent/qqpim/discovery/AdDisplayModel;

    iget v1, v1, Lcom/tencent/qqpim/discovery/AdDisplayModel;->bJp:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 108
    :cond_2
    iget v0, p1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->priority:I

    iget v1, p2, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->priority:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 90
    check-cast p1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    check-cast p2, Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/bgz$2;->a(Lcom/kingroot/kinguser/ad/SplashDisplayModel;Lcom/kingroot/kinguser/ad/SplashDisplayModel;)I

    move-result v0

    return v0
.end method
