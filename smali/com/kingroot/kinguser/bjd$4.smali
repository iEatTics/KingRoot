.class Lcom/kingroot/kinguser/bjd$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjd;->a(Ljava/util/Collection;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bwa:Lcom/kingroot/kinguser/bjd;

.field final synthetic bwj:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjd;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/kingroot/kinguser/bjd$4;->bwa:Lcom/kingroot/kinguser/bjd;

    iput-object p2, p0, Lcom/kingroot/kinguser/bjd$4;->bwj:Ljava/util/List;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1119
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 1120
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$4;->bwj:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    :goto_0
    return-void

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjd$4;->bwj:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/bja;->bW(Ljava/util/List;)V

    goto :goto_0
.end method
