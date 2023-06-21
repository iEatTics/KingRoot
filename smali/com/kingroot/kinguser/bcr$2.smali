.class Lcom/kingroot/kinguser/bcr$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bhn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bcr;->XU()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic biC:Lcom/kingroot/kinguser/bcr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bcr;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/kingroot/kinguser/bcr$2;->biC:Lcom/kingroot/kinguser/bcr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/util/protect/RebootStat;I)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/kingroot/kinguser/bcr$2;->biC:Lcom/kingroot/kinguser/bcr;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/kingroot/kinguser/util/protect/RebootStat;->iP(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bcr;->a(Lcom/kingroot/kinguser/bcr;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18835

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 204
    return-void
.end method

.method public b(Lcom/kingroot/kinguser/util/protect/RebootStat;)V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public c(Lcom/kingroot/kinguser/util/protect/RebootStat;)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public d(Lcom/kingroot/kinguser/util/protect/RebootStat;)V
    .locals 0

    .prologue
    .line 212
    return-void
.end method
