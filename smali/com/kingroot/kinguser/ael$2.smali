.class Lcom/kingroot/kinguser/ael$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ael;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic afi:Lcom/kingroot/kinguser/ael;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ael;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/kingroot/kinguser/ael$2;->afi:Lcom/kingroot/kinguser/ael;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 8

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bek;->a(Lcom/kingroot/kinguser/bed$a;)V

    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/ael$2;->afi:Lcom/kingroot/kinguser/ael;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ael;->uw()Ljava/util/List;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 75
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 76
    new-instance v4, Lcom/kingroot/kinguser/ael$a;

    invoke-direct {v4}, Lcom/kingroot/kinguser/ael$a;-><init>()V

    .line 77
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    iget-object v0, v0, Lcom/kingroot/common/network/download/UpdateInfo;->localName:Ljava/lang/String;

    iput-object v0, v4, Lcom/kingroot/kinguser/ael$a;->localName:Ljava/lang/String;

    .line 78
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    iget-object v0, v0, Lcom/kingroot/common/network/download/UpdateInfo;->url:Ljava/lang/String;

    iput-object v0, v4, Lcom/kingroot/kinguser/ael$a;->url:Ljava/lang/String;

    .line 79
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    iget-object v0, v0, Lcom/kingroot/common/network/download/UpdateInfo;->checksum:Ljava/lang/String;

    iput-object v0, v4, Lcom/kingroot/kinguser/ael$a;->mf:Ljava/lang/String;

    .line 80
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/network/download/UpdateInfo;

    iget v0, v0, Lcom/kingroot/common/network/download/UpdateInfo;->size:I

    int-to-long v6, v0

    iput-wide v6, v4, Lcom/kingroot/kinguser/ael$a;->size:J

    .line 81
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ael$2;->afi:Lcom/kingroot/kinguser/ael;

    invoke-static {v0}, Lcom/kingroot/kinguser/ael;->a(Lcom/kingroot/kinguser/ael;)Lcom/kingroot/kinguser/vg;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/vg;->y(Ljava/util/List;)V

    .line 85
    :cond_1
    return-void
.end method
